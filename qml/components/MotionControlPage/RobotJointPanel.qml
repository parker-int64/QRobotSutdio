import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl


Pane {
    id: _motionControls
    implicitWidth: 300
    implicitHeight: 480

    ColumnLayout {
        anchors.fill: parent
        spacing: 30

        RowLayout {
            Layout.alignment: Qt.AlignTop
            Layout.preferredWidth: 300

            Label {
                text: qsTr("Step")
                Layout.leftMargin: 10
                Layout.rightMargin: 12
            }

            ComboBox {
                id: _setpValue
                Layout.preferredWidth: 150
                Layout.preferredHeight: 50
                Layout.alignment: Qt.AlignHCenter
                model: ["Continuous", "1", "10"]
            }

            Label {
                text: "°"
            }
        }





    }
}


