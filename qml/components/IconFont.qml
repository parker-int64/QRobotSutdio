import QtQuick
import QtQuick.Controls

//
// Material Symbols icon font
// Check: https://fonts.google.com/icons?icon.platform=web&icon.style=Rounded
//

Item {
    width: 24
    height: 24

    property alias source: fontIcon.text
    property alias color: fontIcon.color
    property int size: 24


    Text {
        id: fontIcon
        anchors.centerIn: parent
        font.family: m3icons.font.family
        font.weight: m3icons.font.weight
        font.styleName: m3icons.font.styleName
        font.pixelSize: size
    }


    // Load the icon font.
    FontLoader {
        id: m3icons
        source: "../../assets/fonts/material-icons.ttf"
    }
}
