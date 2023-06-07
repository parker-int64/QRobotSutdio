import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

//
// This is the main content area
//

Item {
    id: contentView
    width: 800
    height: 600


    property alias _pageView: mainView

    SwipeView {

        id: mainView
        anchors.fill: parent

        currentIndex: 0

        // Todo: add more pages here

        HomePage {}

        SettingsPage {}

        AboutPage {}




    }
}



