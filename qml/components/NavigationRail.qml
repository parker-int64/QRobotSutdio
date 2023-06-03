import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl
/*
*  @brief: this is the navigation bar
*
*/

Pane {
    id: navPaneContainer
    width: 80
    height: 600
    padding: 0


    FocusScope {
        id: scpoe
        focus: true

        ColumnLayout {
            id: appIconLayout
            focus: true

            spacing: 12

            Item {
                width: 24
                height: 24

                Layout.alignment: Qt.AlignTop
                Layout.leftMargin: 28
                Layout.topMargin: 20
                Layout.bottomMargin: 30

                Image {
                    id: menu
                    width: 24
                    height: 24
                    anchors.centerIn: parent
                    source: "../../assets/material-icons/menu.svg"
                    fillMode: Image.PreserveAspectFit
                    smooth: true
                    mipmap: true

                    ToolTip.visible: menuMA.containsMouse
                    ToolTip.text: qsTr("Menu")


                    MouseArea {
                        id: menuMA
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        hoverEnabled: true
                    }
                }
            }

            AppIcons {
                id: home
                source: "\ue88a"
                text: qsTr("Home")
            }

            AppIcons {
                id: settings
                source: "\ue8b8"
                text: qsTr("Settings")
            }


//            AppIcons {
//                id: folder
//                source: "\ue2c7"
//                text: qsTr("Folder")
//                MouseArea {
//                    anchors.fill: parent
//                    id: folderMA
//                    onClicked:  {
//                        folder.forceActiveFocus()
//                    }
//                }


//                states: State {
//                    name: "active"
//                    when: folder.activeFocus
//                    PropertyChanges {
//                        folder {
//                            color: "#D0CFC1"
//                            scale: 1.1
//                        }
//                    }
//                }

//                transitions: Transition {
//                    NumberAnimation {
//                        properties: "scale"
//                        duration: 300
//                    }
//                }
//            }
        }



    }


}
