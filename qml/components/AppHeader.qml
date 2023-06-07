import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

//
//  This is the AppBar on top of the page.
//

ToolBar {
    id: headerToolBar

    height: 64

    background: Rectangle {
        anchors.fill: parent
        color: "transparent"
    }

    RowLayout {
        anchors.fill: parent
        spacing: 10

        IconFont {
            source: "\ue5d2"
            Layout.alignment: Qt.AlignVCenter
            Layout.leftMargin: 16

            ToolTip.visible: _menuMA.containsMouse
            ToolTip.text: qsTr("Menu")

            MouseArea {
                id: _menuMA
                width: 48
                height: 48
                anchors.centerIn: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onClicked: {
                    root._drawer.open()
                }
            }
        }

        Label {
            id: _title
            text: qsTr("Robot Control")
            font.pixelSize: 24
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignCenter
            color: "#484649"
        }

        IconSvg {
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            Layout.rightMargin: 16
            Layout.alignment: Qt.AlignVCenter
            source: "../../assets/icons/github.svg"
            ToolTip.visible: _githubMA.containsMouse
            ToolTip.text: qsTr("Fork me on Github")


            MouseArea {
                id: _githubMA
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked:  {
                    Qt.openUrlExternally("https://github.com/parker-int64/RobotControlApplication")
                }
            }
        }

    }
}
