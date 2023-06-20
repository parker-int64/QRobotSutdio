import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl


Pane {
    id: _motionControls
    implicitWidth: 260
    implicitHeight: 480

    ColumnLayout {
        anchors.fill: parent
        spacing: 30

        RowLayout {
            Layout.alignment: Qt.AlignTop

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
                font.pixelSize: 24
            }
        }


        Repeater {
            id: _jointControlRepeater
            model: [qsTr("Joint 1"), qsTr("Joint 2"), qsTr("Joint 3"), qsTr("Joint 4"), qsTr("Joint 5"), qsTr("Joint 6")]

            RowLayout {
                required property string modelData
                spacing: 5

                TextField {
                    text: "0.000"  // Default
                    Layout.preferredWidth: 90
                    Layout.preferredHeight: 30
                    readOnly: true
                    font.pixelSize: 12
                }

                Label {
                    text: "°"
                    font.pixelSize: 24
                }

                Rectangle {
                    id: _jointMinus
                    color: "#E4E4E4"
                    width: 32
                    height: 32
                    radius: 6
                    IconFont {
                        source: "\ue2ea"
                        color: "#5F6368"
                        size: 24
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: _jointMinusMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                    }
                }


                Label {
                    id: _jointName
                    text: modelData
                    font.pixelSize: 12
                }

                Rectangle {
                    id: _jointPlus
                    color: "#E4E4E4"
                    width: 32
                    height: 32
                    radius: 6
                    IconFont {
                        source: "\ue5e1"
                        color: "#5F6368"
                        size: 24
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: _jointPlusMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }
        }


        Label {
            text: qsTr("Joint Movement")
            font.pixelSize: 24
            font.weight: 300
            Layout.alignment: Qt.AlignHCenter
        }
    }
}


