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
        spacing: 5

        RowLayout {
            Layout.alignment: Qt.AlignTop
            Layout.preferredWidth: 280

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
                model: ["Continuous", "1", "10", "100"]
            }

            Label {
                text: "mm&°"
            }
        }

        RowLayout {
            id: _zOperation
            spacing: 50
            Layout.preferredHeight: 75
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.bottomMargin: 20


            Rectangle {
                id: _zMinus
                width: 48
                height: 48
                radius: 6
                color: "#E4E4E4"

                IconFont {
                    source: "\ue5db"
                    color: "#5F6368"
                    size: 48
                    anchors.centerIn: parent
                }

                Label {
                    text: "Z-"
                    anchors.right: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 10
                    font.pixelSize: 24
                    font.weight: 300
                }

                MouseArea {
                    id: _zMinusMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                }
            }

            Rectangle {
                id: _zPlus
                width: 48
                height: 48
                radius: 6
                color: "#E4E4E4"

                IconFont {
                    source: "\ue5d8"
                    color: "#5F6368"
                    size: 48
                    anchors.centerIn: parent
                }


                Label {
                    text: "Z+"
                    anchors.left: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 10
                    font.pixelSize: 24
                    font.weight: 300
                }

                MouseArea {
                    id: _zPlusMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                }
            }



        }

        Item {
            id: _xyOperation
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 20
            Layout.bottomMargin: 70

            Rectangle {
                id: _xyCenter
                width: 42
                height: 42
                radius: 50
                color: "#130707"
                anchors.centerIn: parent
            }



            Rectangle {
                id: _xPlus
                width: 48
                height: 48
                radius: 6
                color: "#E4E4E4"
                anchors.left: _xyCenter.right
                anchors.verticalCenter: _xyCenter.verticalCenter
                anchors.margins: 10

                IconFont {
                    source: "\ue315"
                    color: "#5F6368"
                    size: 48
                    anchors.centerIn: parent
                }

                Label {
                    text: "X+"
                    anchors.left: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 10
                    font.pixelSize: 24
                    font.weight: 300
                }

                MouseArea {
                    id: _xPlusMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                }
            }


            Rectangle {
                id: _xMinus
                width: 48
                height: 48
                radius: 6
                color: "#E4E4E4"
                anchors.right: _xyCenter.left
                anchors.verticalCenter: _xyCenter.verticalCenter
                anchors.margins: 10

                IconFont {
                    source: "\ue314"
                    color: "#5F6368"
                    size: 48
                    anchors.centerIn: parent
                }

                Label {
                    text: "X-"
                    anchors.right: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 10
                    font.pixelSize: 24
                    font.weight: 300
                }

                MouseArea {
                    id: _xMinusMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                }
            }


            Rectangle {
                id: _yPlus
                width: 48
                height: 48
                radius: 6
                color: "#E4E4E4"
                anchors.bottom: _xyCenter.top
                anchors.horizontalCenter: _xyCenter.horizontalCenter
                anchors.margins: 10

                IconFont {
                    source: "\ue316"
                    color: "#5F6368"
                    size: 48
                    anchors.centerIn: parent
                }

                Label {
                    text: "Y+"
                    anchors.bottom:  parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 5
                    font.pixelSize: 24
                    font.weight: 300
                }

                MouseArea {
                    id: _yPlusMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                }
            }

            Rectangle {
                id: _yMinus
                width: 48
                height: 48
                color: "#E4E4E4"
                radius: 6
                anchors.top: _xyCenter.bottom
                anchors.horizontalCenter: _xyCenter.horizontalCenter
                anchors.margins: 10

                IconFont {
                    source: "\ue313"
                    color: "#5F6368"
                    size: 48
                    anchors.centerIn: parent
                }

                Label {
                    text: "Y-"
                    anchors.top:  parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 5
                    font.pixelSize: 24
                    font.weight: 300
                }

                MouseArea {
                    id: _yMinusMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                }
            }
        }





    }
}


