import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

Item {
    id: _generalTab

    implicitWidth: 800
    implicitHeight: 600

    ColumnLayout {

        anchors.fill: parent
        spacing: 20

        Label {
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            text: qsTr("Application Preference")
            font.pixelSize: 24
            Layout.alignment: Qt.AlignTop | Qt.AlignLeft
        }

        Pane {
            Material.elevation: 8
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true

            ColumnLayout {
                anchors.fill: parent
                spacing: 12

                RowLayout {
                    id: _language
                    Layout.fillWidth: true


                    spacing: 20

                    Label {
                        Layout.preferredWidth: 150
                        text: qsTr("Display Language")
                    }

                    ComboBox {
                        Layout.preferredWidth: 120
                        Layout.preferredHeight: 45
                        Layout.alignment: Qt.AlignRight
                        model: ["English", "简体中文"]
                    }
                }


                RowLayout {
                    id: _darkMode
                    spacing: 20

                    Label {
                        Layout.preferredWidth: 150
                        text: qsTr("Dark Mode")
                    }


                    Switch {
                        id: _darkModeStatus
                        Layout.alignment: Qt.AlignHCenter
                        leftPadding: 0
                    }
                }
            }
        }



        // Vertical spacer
        Item {
            Layout.fillHeight: true
        }

    }
}
