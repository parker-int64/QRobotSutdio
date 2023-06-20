import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

Pane {
    id: _robotStatus
    implicitWidth: 400
    implicitHeight: 75
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
            Layout.preferredHeight: 50
            model: [qsTr("World"), qsTr("Tool"), qsTr("Base")]

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


        Switch {
            id: _enableSwitch
            text: checked ? qsTr("ON") : qsTr("OFF")
            Layout.alignment: Qt.AlignVCenter
            Layout.preferredWidth: 120

            ToolTip.visible: hovered
            ToolTip.text: qsTr("Enable or disable the robot")

        }


        Button {
            id: _eStopBtn
            text: qsTr("E-STOP")
            Material.background: Material.Red
            hoverEnabled: true
            ToolTip.visible: hovered
            ToolTip.text: qsTr("Emergency stop")
        }


        // error string
//        Label {
//            id: _eWhat
//            Layout.fillWidth: true
//            text: qsTr("eWhat")
//            visible: false
//        }
        // act like a spacer
//        Item {
//            Layout.fillWidth: true
//        }

    }

}
