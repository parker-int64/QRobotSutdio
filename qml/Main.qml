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
    minimumWidth: 800  // Set the minimal width
    minimumHeight: 600  // Set the minimal height
    visible: true
    title: qsTr("Robot Control")


    // Some properties to be used in other qml files.
    property alias _view: _mainContent._pageView
    property alias _drawer: _menuDrawer

    /*
     *  @brief: the application's main layout.
    */


    header: AppHeader { }


    AppMenuDrawer {
        id: _menuDrawer
    }


    Content{
        id: _mainContent
        anchors.fill: parent
    }

}

