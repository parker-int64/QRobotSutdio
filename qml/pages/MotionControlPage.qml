import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl


Pane {
    id: _paneContainer
    implicitWidth: 800
    implicitHeight: 600

    ScrollView {
        id: _scrollview
        contentWidth: parent.width
        contentHeight: parent.height
        anchors.fill: parent


        RowLayout {
            id: _container

            anchors.fill: parent

            ColumnLayout {
                id: _robot3dAndInfo

                Layout.fillHeight: true
                Layout.leftMargin: 10
                spacing: 18
                Layout.margins: 10


                Robot3DView {
                    id: _view
                    Layout.preferredWidth: 400
                    Layout.fillWidth: true
                    Layout.preferredHeight: 400
                }

                AngleAccPanel {
                    id: _angleAndAcc
                }

                XYZRPYPanel {
                    id: _xyzAndRpy
                }
            }


            ColumnLayout {
                id: _robotControl
                Layout.fillHeight: true
                spacing: 12


                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                Layout.margins: 10

                RobotStatusPanel {
                    id: _robotStatus
                    Layout.preferredWidth: 400
                    Layout.maximumWidth: 400
                    Layout.fillWidth: true
                    Layout.preferredHeight: 75
                }


                ControlButtonsPanel {
                    id: _controlButtons
                    Layout.preferredWidth: 400
                    Layout.maximumWidth: 400
                    Layout.fillWidth: true
                }

                VelocityPanel {
                    id: _velocityPanel
                    Layout.preferredWidth: 400
                    Layout.maximumWidth: 400
                    Layout.fillWidth: true
                }

                MotionControlPanel {
                    id: _motionControlBtns
                    Layout.preferredWidth: 200
                }

            }
        }

    }
}


