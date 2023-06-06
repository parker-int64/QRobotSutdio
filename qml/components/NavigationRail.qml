import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl
/*
*  @brief: this is the navigation rail
*
*/

Item {
    id: navPaneContainer
    width: 80
    height: 600

    ColumnLayout {
        id: appIconContainer
        anchors.fill: parent

        spacing: 12

        IconSvg {
            id: menu
            width: 24
            height: 24

            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.topMargin: 30
            Layout.bottomMargin: 30


            source: "../../assets/material-icons/menu.svg"

            ToolTip.visible: menuMA.containsMouse
            ToolTip.text: qsTr("Menu")

            MouseArea {
                id: menuMA
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                hoverEnabled: true

            }
        }


        Component {
            id: iconDelegate

            Item {
                id: wrapper
                width: 80
                height: 56

                IconButton {
                    id: iconId
                    name: iconName
                    code: iconCode
                    bgColor: wrapper.ListView.isCurrentItem ? "#E8DEF8" : "transparent"
                    text: iconText
                }

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    propagateComposedEvents: true
                    onClicked: {
                        wrapper.ListView.view.currentIndex = index;
                        root._stackView.push("../pages/"+ iconName + "Page.qml")
                    }
                }
            }
        }


        ListView {
            id: iconViews
            width: 80
            Layout.fillHeight: true
            delegate: iconDelegate
            spacing: 12

            model: ListModel {
                id: iconModel
                Component.onCompleted:  {
                    iconModel.append({"iconId": "home", "iconName": "Home","iconCode": "\ue88a", "iconText": qsTr("Home")})
                    iconModel.append({"iconId": "settings","iconName": "Settings", "iconCode": "\ue8b8", "iconText": qsTr("Settings")})
                }
            }
        }

    }
}
