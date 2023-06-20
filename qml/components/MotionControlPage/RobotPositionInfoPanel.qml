import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

Pane {
    id: _xyzAndRpy
    implicitWidth: 360
    implicitHeight: 80
    Material.elevation: 6
    bottomPadding: 0


    ScrollView {
        anchors.fill: parent
        ScrollBar.horizontal: ScrollBar {
            width: parent.width
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            visible: parent.width < 800 ? true : false
        }

        Row {
            spacing: 20

            Repeater {
                id: _xyzInfo

                model: ["X", "Y", "Z", "Rx", "Ry", "Rz"]
                GridLayout {
                    Layout.minimumWidth: 360
                    required property string modelData
                    rows: 2
                    columns: 2
                    Label {
                        Layout.row: 0
                        Layout.column: 0
                        text: modelData
                    }

                    TextField {
                        Layout.row: 1
                        Layout.column: 0
                        Layout.preferredHeight: 30
                        Layout.preferredWidth: 100
                        readOnly: true
                        text: "0.000" // Default
                        font.pixelSize: 12
                    }

                    Label {
                        Layout.row: 1
                        Layout.column: 1
                        text: modelData.length === 1 ? "mm" : "°"
                    }
                }

            }
        }

    }
}
