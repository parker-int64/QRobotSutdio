import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material.impl
import RobotControl
/*
 * @brief: sidebar icons
 *         the material3 style
*/

Item {
    id: iconContainer
    width: 80
    height: 56

    property alias source: iconText.text
    property alias text: iconLabel.text
    property alias textColor: iconLabel.color
    property alias color: bgRect.color


    FocusScope {
        id: iconScope
        width: parent.width
        height: parent.height
        focus: false



        ColumnLayout {
            id: iconLayout

            anchors.fill: parent

            spacing: 4

            Rectangle {
                id: bgRect
                width: 56
                height: 32
                radius: 16
                Layout.alignment: Qt.AlignCenter
                color: "transparent"

                Rectangle{
                    id: hoverRect
                    anchors.fill: parent
                    color: "transparent"
                    radius: 16
                    z: -5
                    state: "mouseOut"
                }

                Ripple {
                    id: ripple
                    width: bgRect.width
                    height: bgRect.height
                    anchor: bgRect
                    clipRadius: parent.radius
                    color: "#60000000"
                    z: -20
                    pressed: iconMouseArea.pressed
                    active: enabled && (iconMouseArea.pressed)
                }

                Text {
                    id: iconText
                    anchors.centerIn: parent
                    font.family: m3icons.font.family
                    font.weight: m3icons.font.weight
                    font.styleName: m3icons.font.styleName
                    font.pixelSize: 24
                }

            }

            Text {
                id: iconLabel
                Layout.alignment: Qt.AlignHCenter
                lineHeight: 16
                font.pixelSize: 12
                font.weight: 500
            }
        }
    }

    MouseArea {
        id: iconMouseArea
        anchors.fill: parent
        focus: true
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked:  {
            iconLayout.forceActiveFocus()
        }
    }



    states: [
        State {
            name: "active"
            when: iconLayout.activeFocus
            PropertyChanges {
                target: bgRect
                color: "#E8DEF8"
            }

            PropertyChanges {
                target: iconText
                scale: 1.2
            }

        },

        State {
            name: "hover"
            when: iconMouseArea.containsMouse
            PropertyChanges {
                target: hoverRect
                color: "#CECECE"

            }
        }    ]

    transitions: Transition {

            NumberAnimation {
                properties: "scale"
                duration: 200
            }
    }







    // Load the material icon font
    FontLoader {
        id: m3icons
        source: "../../assets/fonts/material-icons.ttf"
    }
}
