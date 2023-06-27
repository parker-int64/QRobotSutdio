cmake_minimum_required(VERSION 3.16)

project(QRobotStudio
    VERSION 0.1.1.60
    DESCRIPTION "A Qt Quick based robot control software, personal interest only."
    HOMEPAGE_URL "https://github.com/parker-int64/QRobotSutdio"
    LANGUAGES CXX C)


set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find the required packages
find_package(Qt6 REQUIRED COMPONENTS core Quick  QuickControls2 LinguistTools)

# If the build type is debug, the program will print debug info.
# If not, optimize the program with flag `/O2` or `-O2`
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_definitions(-D_DEBUG)
else()
    add_definitions(-O2)
endif()


# A slightly difference between Qt 6.5 and lower version of Qt
if(${Qt6_VERSION_MINOR} STRLESS "3")
    set(CMAKE_AUTOMOC ON) # for Qt < 6.3.x
else()
    qt_standard_project_setup(REQUIRES 6.${Qt6_VERSION_MINOR}) # this is new in qt 6.3
endif()

# Generated something like versions, etc
configure_file(config.h.in config.h)
configure_file(winicon.rc.in winicon.rc)


# Set the source files
set(PROJECT_SOURCES
    src/main.cpp)

# Set the qml files
set(QML_FILES
    qml/components/ApplicationLayout/AppHeader.qml
    qml/components/ApplicationLayout/AppMenuDrawer.qml
    qml/components/ApplicationLayout/Content.qml
    qml/components/ApplicationLayout/NavigationDrawer.qml
    qml/components/IconFont.qml
    qml/components/IconSvg.qml
    qml/components/IconButton.qml
    qml/components/M3Extra.qml
    qml/components/MotionControlPage/Robot3DView.qml
    qml/components/MotionControlPage/RobotVelocityPanel.qml
    qml/components/MotionControlPage/RobotPositionInfoPanel.qml
    qml/components/MotionControlPage/RobotStatusPanel.qml
    qml/components/MotionControlPage/RobotTCPPanel.qml
    qml/components/MotionControlPage/RobotRotationPanel.qml
    qml/components/MotionControlPage/RobotJointPanel.qml
    qml/components/SettingsPage/GeneralSettings.qml
    qml/pages/HomePage.qml
    qml/pages/SettingsPage.qml
    qml/pages/AboutPage.qml
    qml/pages/MotionControlPage.qml
    qml/Main.qml)




# Singleton type in QML must add properties
# So the generated qmldir will add "singleton"
set_source_files_properties(qml/components/M3Extra.qml
                            PROPERTIES
                            QT_QML_SINGLETON_TYPE TRUE
)
# Set the resources files
set(RES_FILES
    assets/icons/menu.svg
    assets/icons/qtlogo.svg
    assets/icons/github.svg
    assets/icons/robot_arm_large.svg
    assets/fonts/material-icons.ttf
    assets/favicon.ico
)

# Add executable file

if(WIN32)
    set(RC_FILES ${CMAKE_CURRENT_BINARY_DIR}/winicon.rc) # use the generated rc file

    qt_add_executable(${CMAKE_PROJECT_NAME}
        ${PROJECT_SOURCES} ${RC_FILES}
    )

elseif(UNIX)
    qt_add_executable(${CMAKE_PROJECT_NAME}
        ${PROJECT_SOURCES}
    )
endif()



# Generate QML modules
# Main module
qt_add_qml_module(${CMAKE_PROJECT_NAME}
    URI RobotControl
    VERSION 1.0
    QML_FILES ${QML_FILES}
    RESOURCES ${RES_FILES}
)


set(IMAGE_FILES assets/images/demo.png)

qt_add_resources(${CMAKE_PROJECT_NAME} "images"
                PREFIX "/images"
                BASE "assets/images" # alias
                FILES ${IMAGE_FILES})

# Extra QML module
add_subdirectory(modules/ExtraUtils)


# Additional target properties
set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# The extra include directories
# Contains the generated header from `configure_file()`
target_include_directories(${CMAKE_PROJECT_NAME}
    PRIVATE ${CMAKE_CURRENT_BINARY_DIR}
)

target_link_libraries(${CMAKE_PROJECT_NAME}
    PRIVATE Qt6::Quick
            Qt6::QuickControls2
            extra_utilsplugin
)

# Install operations
install(TARGETS ${CMAKE_PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

