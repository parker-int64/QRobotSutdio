import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl


Item {
    id: _paneContainer
    implicitWidth: 800
    implicitHeight: 600


    ColumnLayout {
        id: _settingsMainLayout
        spacing: 20
        anchors.fill: parent

        TabBar {
            id: _settingsBar
            Layout.preferredWidth: 600

            Layout.alignment: Qt.AlignHCenter

            Repeater {
                model: ["General", "Modbus TCP/IP", "CAN Bus"]

                TabButton {
                    text: modelData
                    width: 200
                }
            }
        }


        StackLayout {
            id: _contents
            Layout.fillWidth: true
            Layout.maximumWidth: 800
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter
            currentIndex: _settingsBar.currentIndex


            GeneralSettings {
                id: _generalTab
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
            }

            Item {
                id: _modbusTab
            }
            Item {
                id: _canbusTab
            }
        }
    }





}
