import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl
import ExtraUtils
Pane {
    id: _paneContainer
    implicitWidth: 800
    implicitHeight: 600

    Utils {
        id: utils
    }


    ScrollView {
        id: _scrollview
        contentWidth: parent.width
        contentHeight: parent.height
        anchors.fill: parent


        ColumnLayout {

            anchors.fill: parent

            spacing: 10


            Label {
                id: _pageTitle
                text: qsTr("About this software")
                font.pixelSize: 24
                Layout.alignment: Qt.AlignHCenter
            }


            Repeater {
                id: _appInfo
                model: [utils.getAppName(), utils.getAppVersion(), utils.getAppDescription(), utils.getAppHomePageUrl()]

                Label {
                    required property string modelData
                    text: modelData
                    Layout.alignment: Qt.AlignHCenter
                }
            }




            IconSvg {
                id: _qtlogo
                source: "../../assets/icons/qtlogo.svg"
                Layout.preferredWidth: 64
                Layout.preferredHeight: 64
                Layout.alignment: Qt.AlignHCenter
                Layout.topMargin: 30

                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        console.log("Opening external url...")
                        Qt.openUrlExternally("https://www.qt.io/")
                    }
                }
            }

            Label {
                id: _qtDescription
                text: qsTr("Qt 6.5 LTS")
                Layout.alignment: Qt.AlignHCenter
            }

            GridLayout {
                id: _iconsGrid
                columns: 4
                Layout.alignment: Qt.AlignHCenter
                Layout.topMargin: 30

                Repeater {
                    id: _iconsRepeater
                    model: ["\ue5c4", "\ue5d5", "\ue88a", "\ue3c9",
                            "\ue8b8", "\ue856", "\ue5c3", "\ue029",
                            "\ue158", "\uf01f", "\ue86c", "\ue8df"]

                    IconFont {
                        required property string modelData
                        source: modelData
                        color: "#5F6368"
                        size: 24

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: {
                                Qt.openUrlExternally("https://fonts.google.com/icons?icon.style=Rounded")
                            }
                        }
                    }
                }
            }

            Label {
                id: _iconDescription
                text: qsTr("Material Symbols")
                Layout.alignment: Qt.AlignHCenter
            }


            Rectangle {
                id: spacer
                color: "transparent"
                Layout.fillHeight: true
            }

        }
    }
}
