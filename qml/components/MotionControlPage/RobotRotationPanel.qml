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
        spacing: 10

        Repeater {
            id: _rotationRepeater
            model: ["Rx", "Ry", "Rz"]

            RowLayout {
                Layout.preferredWidth: 280
                required property string modelData

                spacing: 10

                Label {
                    text: modelData
                    font.pixelSize: 24
                    font.weight: 300
                }

                Rectangle {
                    id: _rotMinus
                    color: "#E4E4E4"
                    width: 48
                    height: 48
                    radius: 6

                    IconFont {
                        source: "\ue15b"
                        color: "#5F6368"
                        size: 48
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: _rotMinusMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                    }
                }


                Rectangle {
                    id: _rotPlus
                    color: "#E4E4E4"
                    width: 48
                    height: 48
                    radius: 6
                    Layout.leftMargin: 20

                    IconFont {
                        source: "\ue145"
                        color: "#5F6368"
                        size: 48
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: _rotPlusMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }
        }


        Label {
            text: qsTr("TCP Movement")
            Layout.alignment: Qt.AlignHCenter
            font.pixelSize: 24
            font.weight: 300
        }
    }
}


