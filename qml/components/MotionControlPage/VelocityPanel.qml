import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Pane {
    id: _velocityControl

    width: 400
    height: 75
    Material.elevation: 5

    RowLayout {
        id: _container
        anchors.fill: parent
        spacing: 5
        Label {
            text: qsTr("Velocity")
        }

        Slider {
            id: _velocitySlider
            Layout.fillWidth: true

            from: 1
            to: 100
            stepSize: 1 // Step size set to 1
            value: 10  // Default velocity.
            ToolTip.visible: pressed
            Material.accent: Material.Green


            onValueChanged: {
                if ( value <= 50 && value >= 1 ){
                    ToolTip.text = qsTr("Change the running speed")
                    Material.accent = Material.Green
                } else if ( value > 50 && value < 75 ){
                    ToolTip.text = qsTr("A bit fast")
                    Material.accent = Material.Yellow
                } else {
                    ToolTip.text = qsTr("Fast and furious!")
                    Material.accent = Material.Red  // Velocity > 75 Trigger color change. Indicate danger.
                }
            }
        }

        Label {
            id: _velocityNum
            text: _velocitySlider.value + "%"
            Layout.leftMargin: 10
            Layout.alignment: Qt.AlignRight
        }
    }
}
