import QtQuick
import QtQuick.Controls
import QtQuick.Layouts



Pane {
    id: settingsPageContainer


    Button {
        width: 150
        height: 56
        text: "Settings Page"
        anchors.centerIn: parent
        onClicked: {
            console.log("Hello")

        }
    }
}
