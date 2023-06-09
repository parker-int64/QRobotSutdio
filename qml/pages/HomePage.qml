import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl


Pane {
    id: homePageContainer
    implicitWidth: 800
    implicitHeight: 600

    ColumnLayout {
        id: _layout

        anchors.fill: parent

        spacing: 10

        Label {
            id: _pageHead
            text: qsTr("Welcome! Please configure your connections.")
            font.pixelSize: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Item {
            // act like a spacer
            // expand the whole area
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter

            TextField {
                id: _ipEdit
                width: 300
                anchors.centerIn: parent
                placeholderText: qsTr("IP Address")
            }
        }

        Button {
            id: _submitBtn
            width: 150
            height: 75
            text: qsTr("Connect")
            Layout.alignment: Qt.AlignRight
            Layout.rightMargin: 20
            Layout.bottomMargin: 30
            highlighted: true
            enabled: _ipEdit.text.length !== 0
            Material.elevation: 3
        }

    }
}
