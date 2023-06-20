import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

Pane {
    id: _robot3dView

    implicitWidth: 400
    implicitHeight: 400

    Material.elevation: 6

    // 3D Panel
    IconSvg {
        width: 400
        height: 400
        source: "/images/demo.png"
        anchors.centerIn: parent
    }


}
