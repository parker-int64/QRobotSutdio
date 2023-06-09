import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Pane {
    id: _controlButtons
    width: 400
    height: 75
    Material.elevation: 5


    RowLayout {
        id: _row
        anchors.fill: parent
        spacing: 12

        Switch {
            id: _enableSwitch
            text: checked ? qsTr("Enable") : qsTr("Disable")
            Layout.alignment: Qt.AlignVCenter

        }


        Button {
            id: _eStopBtn
            text: qsTr("E-STOP")
            Material.background: Material.Red
            hoverEnabled: true
            ToolTip.visible: hovered
            ToolTip.text: qsTr("Emergency stop")
            Layout.alignment: Qt.AlignRight
        }



    }

}
