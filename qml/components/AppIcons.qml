import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl
/*
 * @brief: sidebar icons
 *         the material3 style
*/

Item {
    id: iconContainer
    width: 80
    height: 56

    property alias source: icon.source
    property alias text: iconText.text
    property alias isFocused: hoverRect.focus
    property alias textColor: iconText.color

    ColumnLayout {
        id: iconLayout

        spacing: 4

        Rectangle {
            id: hoverRect
            width: 56
            height: 32
            radius: 16
            Layout.alignment: Qt.AlignCenter
            color: "transparent"



            Image {
                id: icon
                Layout.preferredWidth: 24
                Layout.preferredHeight: 24
                width: 24
                height: 24
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                smooth: true
                mipmap: true
            }

            states: [ "mouseIn", "mouseOut" ]
            state: "mouseOut"


            MouseArea {
                id: hoverRectMouseArea
                anchors.fill: parent
                hoverEnabled: true
                onEntered:  {
                    hoverRect.color = "#E8DEF8"
                }

                onExited: {
                    hoverRect.color = "transparent"
                }



            }

            transitions: [
                Transition {
                    from: "*"
                    to: "mouseIn"
                    NumberAnimation {
                        target: hoverRect
                        properties: "scale"
                        from: 0
                        to: 1
                        duration: 300
                        easing.type: Easing.OutBounce
                    }
                }
            ]


        }

        Text {
            id: iconText
            Layout.alignment: Qt.AlignHCenter
            lineHeight: 16
            font.pixelSize: 12
            font.weight: 500

        }
    }


    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            console.log("Yes, I am aware")
        }
    }





}
