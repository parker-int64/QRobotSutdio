import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

Pane {
    id: _robotStatus
    implicitWidth: 400
    implicitHeight: 75
    Material.elevation: 6
    property bool _robotNominal: false

    RowLayout {
        id: _statusContainer
        anchors.fill: parent
        spacing: 10

        Label {
            id: _frame
            text: qsTr("Frame")
        }

        ComboBox {
            id: _frameSelect
            Layout.preferredWidth: 120
            Layout.preferredHeight: 50
            font.pixelSize: 12
            model: [qsTr("World"), qsTr("Tool"), qsTr("Base")]
        }


        Item {
            Layout.fillWidth: true
        }



        Label {
            id: _status
            text: qsTr("Status")
            Layout.alignment: Qt.AlignRight
        }


        // Status indicator Red / Green
        Rectangle {
            width: 24
            height: 24
            radius: 50
            Layout.leftMargin: 10
            color: _robotNominal ? Material.color(Material.Green) : Material.color(Material.Red)

            ToolTip.visible: hovered
            ToolTip.text:  _robotNominal ? qsTr("Normal") : qsTr("Not ready")
        }


        ButtonGroup {
            id: _robotOperation
            buttons: _row.children
        }

        Row {
            id: _row
            spacing: 20

            Button {
                id: _enableBtn
                text: qsTr("Enable")
            }


            Button {
                id: _disableBtn
                text: qsTr("Disable")


            }

            Button {
                id: _eStopBtn
                Material.background: Material.Red
                hoverEnabled: true
                ToolTip.visible: hovered
                ToolTip.text: qsTr("Emergency stop")

                Text {
                    text: qsTr("E-STOP")
                    anchors.centerIn: parent
                    color: "#FFFFFF"
                }
            }
        }
    }

}
