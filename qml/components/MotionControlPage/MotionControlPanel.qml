import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl




Pane {
    id: _motionControls
    width: 200
    height: 400
    Material.elevation: 6

    ColumnLayout {
        anchors.fill: parent
        spacing: 20
        ComboBox {
            id: _controlType
            model: ["Axis", "XYZ"]

        }

        Repeater {
            id: _motionControlBtns
            model: 7
            Layout.alignment: Qt.AlignHCenter

            RowLayout {
                spacing: 20

                IconFont {
                    id: _controls
                    source: "\ue15b"
                    color: "#5F6368"
                }

                Text {
                    id: _controlId
                    text: index + 1
                    color: "#5F6368"
                    font.pixelSize: 24
                }


                IconFont {
                    id: _controlsAdd
                    source:  "\ue145"
                    color: "#5F6368"
                }
            }
        }
    }





}


