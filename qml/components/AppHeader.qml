import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

ToolBar {
    id: headerToolBar

    background: Rectangle {
        anchors.fill: parent
        color: "transparent"
    }

    RowLayout {
        anchors.fill: parent

        IconFont {
            source: "\ue5d2"
            Layout.alignment: Qt.AlignVCenter
            Layout.leftMargin: 30
            Layout.topMargin: 30

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onClicked: {
                    root._drawer.open()
                }
            }
        }
    }
}
