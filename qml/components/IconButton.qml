import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material.impl
import RobotControl
/*
 * @brief: IconButton the material3 style
 *
*/

Item {
    id: iconContainer
    width: 360
    height: 56

    property alias code: iconText.source
    property alias text: iconLabel.text
    property alias textColor: iconLabel.color
    property alias bgColor: bgRect.color


    Rectangle {
        id: bgRect
        width: 336
        height: 56
        radius: 28
        color: "transparent"
        anchors.centerIn: parent
        z: 10


        Rectangle {
            id: hoverRect
            anchors.fill: parent
            color: "transparent"
            radius: 28
            z: -1
        }

        Ripple {
            id: ripple
            width: bgRect.width
            height: bgRect.height
            anchor: bgRect
            clipRadius: 5
            color: "#60000000"
            pressed: iconMouseArea.pressed
            active: enabled && (iconMouseArea.pressed)
        }


        RowLayout {
            id: iconLayout

            anchors.fill: parent

            spacing: 12

            IconFont {
                id: iconText
                source: code
                color: "#5F6368"
                Layout.leftMargin: 16
                Layout.alignment: Qt.AlignVCenter
            }

            Text {
                id: iconLabel
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignVCenter
                font.pixelSize: 12
                font.weight: 500
            }
        }

        MouseArea {
            id: iconMouseArea
            anchors.fill: parent
            hoverEnabled: true
        }

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
}
