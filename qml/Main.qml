import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window
import RobotControl
/* @brief this is the main entrance of qml ui program.
 *
*/
ApplicationWindow {
    width: 1200
    height: 800
    minimumWidth: 1024  // Set the minimal width
    minimumHeight: 768  // Set the minimal height
    visible: true
    title: qsTr("Robot Control")

    /*
     *  @brief: the application's main layout.
    */
    RowLayout {
        id: mainLayout

        width: parent.width
        height: parent.height

        spacing: 0


        // Navagation rail on the left side
        NavigationRail {
            id: navRail
            Layout.fillHeight: true
        }

        // Main Content in the middle
        Content {
            id: mainContent
            Layout.fillHeight: true
            Layout.fillWidth: true

            Material.background: Material.Blue
            Text {
                id: test
                text: qsTr("Hello World")
                anchors.centerIn: parent
                color: "white"
            }

            Button {
                id: btn
                width: 100
                height: 50
                text: qsTr("Hello")

            }


        }

    }



}

