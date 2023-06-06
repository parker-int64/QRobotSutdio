import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

Item {
    id: contentView
    width: 800
    height: 600


    property alias _pageView: mainView

    StackView {

        id: mainView
        anchors.fill: parent


        initialItem: HomePage {}



    }
}



