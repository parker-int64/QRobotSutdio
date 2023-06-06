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
    focus: true

    property alias code: iconText.source
    property alias text: iconLabel.text
    property alias textColor: iconLabel.color
    property alias bgColor: bgRect.color
    property var name

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

            IconFont {
                id: iconText
                source: code
                anchors.centerIn: parent
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

    MouseArea {
        id: iconMouseArea
        anchors.fill: parent
        hoverEnabled: true
    }

    states: [
        State {
            name: "hover"
            when: iconMouseArea.containsMouse
            PropertyChanges {
                target: hoverRect
                color: "#CECECE"
            }
        }
    ]

    transitions: Transition {

            NumberAnimation {
                properties: "scale"
                duration: 200
            }
    }

}
