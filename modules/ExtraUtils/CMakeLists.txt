set(MODULE_NAME ExtraUtils)

set(SOURCES
    src/utils.h
    src/utils.cpp
)

qt_add_library(extra_utils STATIC)
qt_add_qml_module(extra_utils
    URI ${MODULE_NAME}
    VERSION 1.0
    SOURCES ${SOURCES}
)

target_include_directories(extra_utils
    PRIVATE ${CMAKE_BINARY_DIR}
            ./src
)
