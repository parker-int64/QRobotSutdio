import QtQuick
import QtQuick.Controls
import QtQuick.Layouts



Pane {
    id: homePageContainer
    implicitWidth: 800
    implicitHeight: 600

//    Material.background: Material.Teal

    Button {
        width: 150
        height: 56
        text: "Home Page"
        anchors.centerIn: parent
    }
}
