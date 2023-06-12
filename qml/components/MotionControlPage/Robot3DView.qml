import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

Pane {
    id: _robot3dView

    width: 600
    height: 400

    Material.elevation: 6

    // 3D Panel
    IconSvg {
        width: 400
        height: 400
        source: "file:///D:/project/QRobotStudio/QRobotStudio/temp/img/xarm.jpg"
        anchors.centerIn: parent
    }


}
