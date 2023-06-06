import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window
import RobotControl
/* @brief this is the main entrance of qml ui program.
 *
*/
ApplicationWindow {
    id: root
    width: 1200
    height: 800
    minimumWidth: 1024  // Set the minimal width
    minimumHeight: 768  // Set the minimal height
    visible: true
    title: qsTr("Robot Control")



    property alias _stackView: mainContent._pageView
    /*
     *  @brief: the application's main layout.
    */

    RowLayout {
        id: mainLayout

        anchors.fill: parent

        spacing: 0

        // Navagation rail on the left side
        NavigationRail {
            id: navRail
            width: 80
            Layout.fillHeight: true
        }

        // Main Content in the middle
        Content {
            id: mainContent
            Layout.fillWidth: true
            Layout.fillHeight: true
            Material.background: Material.Blue

        }
    }



}

