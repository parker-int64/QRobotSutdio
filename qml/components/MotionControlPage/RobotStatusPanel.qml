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
            id: _status
            text: qsTr("Status")
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


        // error string
//        Label {
//            id: _eWhat
//            Layout.fillWidth: true
//            text: qsTr("eWhat")
//            visible: false
//        }
        // act like a spacer
        Item {
            Layout.fillWidth: true
        }

    }

}
