import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl
import ExtraUtils

Item {
    id: _generalTab

    implicitWidth: 800
    implicitHeight: 600

    QtObject {
        id: _root
        property bool _darkMode: false

    }

    Utils {
        id: _utils
    }

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

                    IconFont {
                        source: "\ue894"
                        color: "#5F6368"
                    }

                    Label {
                        Layout.preferredWidth: 150
                        text: qsTr("Display Language")
                    }

                    ComboBox {
                        id: _languageSelect
                        Layout.preferredWidth: 120
                        Layout.preferredHeight: 45
                        Layout.alignment: Qt.AlignRight
                        model: ["English", "简体中文"]

                        onActivated: {
                            console.log(currentIndex)

//                            if( currentIndex !== 0 ){
//                                // _restartAppContentDialog.open() // This triggers a dialog to ask user to restart the app.
//                                _utils.setLanguage("zh_CN")

//                            }

                            switch(currentIndex) {
                            case 1:
                                console.log("set language: zh_CN")
                                _utils.setLanguage("zh_CN")
//                                _utils.requestRetranslate() // This ask the app to retranslate.
                                break;
                            default:
                                console.log("set default language: en_US")
                            }
                        }
                    }
                }


                RowLayout {
                    id: _darkMode
                    spacing: 20

                    IconFont {
                        source: "\ue51c"
                        color: "#5F6368"
                    }


                    Label {
                        Layout.preferredWidth: 150
                        text: qsTr("Dark Mode")
                    }


                    Switch {
                        id: _darkModeStatus
                        Layout.alignment: Qt.AlignHCenter
                        leftPadding: 0

                        onPositionChanged: {
                            _root._darkMode = !_root._darkMode
                            _utils.setDarkMode(_root._darkMode)
                        }
                    }
                }
            }
        }


        // Vertical spacer
        Item {
            Layout.fillHeight: true
        }

    }





    Dialog {

        id: _restartAppContentDialog
        modal: true
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        title: qsTr("Note")

        Label {
            text: qsTr("Restart the program to change the language?")
        }

        footer: DialogButtonBox {
            Button {
                text: qsTr("Cancel")
                DialogButtonBox.buttonRole: DialogButtonBox.RejectRole
                flat: true
            }
            Button {
                text: qsTr("OK")
                DialogButtonBox.buttonRole: DialogButtonBox.AcceptRole
                flat: true
            }

        }

        onAccepted: console.log("Ok clicked")
        onRejected: {
            _languageSelect.currentIndex = 0  // restore to default index
        }
    }



}
