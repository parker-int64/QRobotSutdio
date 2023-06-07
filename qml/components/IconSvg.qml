import QtQuick
import QtQuick.Controls
//
// Load image file. (particularly the SVG format)
//

Item {
    width: 24
    height: 24

    property alias source: svgIcon.source

    Image {
        id: svgIcon
        width: parent.width
        height: parent.height
        mipmap: true
        smooth: true
        antialiasing: true
        fillMode: Image.PreserveAspectFit
    }

}
