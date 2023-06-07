import QtQuick
import QtQuick.Controls
import QtQuick.Layouts



Pane {
    id: _paneContainer
    implicitWidth: 800
    implicitHeight: 600

    ScrollView {
        id: _scrollview
        contentWidth: parent.width
        contentHeight: parent.height
        anchors.fill: parent


        Button {
            width: 150
            height: 56
            text: "Settings Page"
            anchors.centerIn: parent
        }
    }
}
