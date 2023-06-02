import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl
/*
*  @brief: this is the navigation bar
*
*/

Item {
    width: 200
    height: 600

    Pane {
        id: navPane
        width: parent.width
        height: parent.height

        ColumnLayout {
            id: appIconLayout

            spacing: 12

//            AppIcons {
//                id: menu
//                source: "../../assets/material-icons/menu.svg"
//            }

            Item {
                id: menu_t
                width: 56
                height: 56

                Layout.alignment: Qt.AlignCenter

                Image {
                    id: icon
                    width: 24
                    height: 24
                    source: "../../assets/material-icons/menu.svg"
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    smooth: true
                    mipmap: true
                }

                Rectangle {
                    anchors.fill: parent
                    color: "#CECECE"
                }
            }


            AppIcons {
                id: home
                source: "../../assets/material-icons/home.svg"
                text: qsTr("Home")
            }

            AppIcons {
                id: settings
                source: "../../assets/material-icons/settings.svg"
                text: qsTr("Settings")
            }
        }
    }
}
