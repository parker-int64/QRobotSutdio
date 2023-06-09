import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl
/*
*  @brief: this is the navigation drawer item
*
*/

Item {
    id: navPaneContainer
    width: 360
    height: 600

    ColumnLayout {
        id: appIconContainer
        anchors.fill: parent

        spacing: 12

        Component {
            id: iconDelegate

            Item {
                id: wrapper
                width: 336
                height: 56

                IconButton {
                    id: iconId
                    code: iconCode
                    bgColor: wrapper.ListView.isCurrentItem ? Material.color(Material.Pink, Material.Shade50) : "transparent"
                    text: iconText
                }

                MouseArea {
                    id: _btnMouseArea
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    propagateComposedEvents: true
                    onClicked: {
                        wrapper.ListView.view.currentIndex = index;
                        root._view.setCurrentIndex(index)

                        root._headerTitleText = iconText
                        // after navigation, we should close the drawer
                        root._drawer.close()

                    }
                }
            }
        }


        ListView {
            id: iconViews
            width: 360
            Layout.fillHeight: true
            delegate: iconDelegate
            spacing: 12

            model: ListModel {
                id: iconModel
                Component.onCompleted:  {
                    iconModel.append({"iconId": "home", "iconCode": "\ue88a", "iconText": qsTr("Home")})
                    iconModel.append({"iconId": "motionControl", "iconCode": "\ue89f", "iconText": qsTr("Motion Control")})
                    iconModel.append({"iconId": "settings", "iconCode": "\ue8b8", "iconText": qsTr("Settings")})
                    iconModel.append({"iconId": "about", "iconCode": "\ue88e", "iconText": qsTr("About")})

                }
            }
        }
    }
}
