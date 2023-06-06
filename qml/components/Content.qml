import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

Item {
    id: contentView
    width: 800
    height: 600


    property alias _pageView: mainView

    SwipeView {

        id: mainView
        anchors.fill: parent

        currentIndex: 0

        HomePage {}

        SettingsPage {}




    }
}



