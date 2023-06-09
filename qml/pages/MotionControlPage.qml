import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl


Pane {
    id: _paneContainer
    implicitWidth: 800
    implicitHeight: 600

    ScrollView {
        id: _scrollview
        contentWidth: parent.width
        contentHeight: parent.height
        anchors.fill: parent

        GridLayout {
            id: _gridLayout

            anchors.fill: parent
            antialiasing: true

            rows: 5
            columns: 2

            // Todo: Use QQuick 3D to load 3D model

            IconSvg {
                Layout.preferredWidth: 300
                Layout.preferredHeight: 300
                Layout.row: 0
                Layout.column: 0
                Layout.rowSpan: 4
                Layout.columnSpan: 1
                source: "file:///D:/project/QRobotStudio/QRobotStudio/temp/img/xarm.jpg"
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }

            Pane {
                id: _angleAndAcceleration
                Layout.row: 5
                Layout.column: 0
                Layout.rowSpan: 1
                Layout.columnSpan: 1
                Layout.preferredWidth: 300
                Layout.fillHeight: true
                Material.elevation: 5
            }


            Pane {
                id: _xyzAndRpy
                Layout.row: 5
                Layout.column: 1
                Layout.rowSpan: 1
                Layout.columnSpan: 1
                Layout.preferredWidth: 300
                Layout.fillHeight: true
                Material.elevation: 5
            }


            ControlButtonsPanel {
                id: _controlButtons
            }


            VelocityPanel {
                id: _velocityPanel
            }
        }

    }
}
