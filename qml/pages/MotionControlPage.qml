import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import RobotControl

Pane {
    id: _paneContainer
    implicitWidth: 800
    implicitHeight: 600
    padding: 0


    ScrollView {
        id: _scrollControls
        contentWidth: parent.width
        contentHeight: parent.height
        anchors.fill: parent
        padding: 10

        GridLayout {
            id: _contentGrid
            anchors.fill: parent
            columns: 3

            ColumnLayout {
                id: _tcpMovement
                Layout.preferredWidth: 300
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                spacing: 0

                RobotTCPPanel {
                    Layout.preferredHeight: 480
                    Layout.fillHeight: true
                    id: _tcpPanel
                }


                RobotRotationPanel {
                    Layout.preferredHeight: 260
                    Layout.fillHeight: true
                    id: _rotPanel
                }
            }

            ColumnLayout {
                id: _robot3DView
                Layout.alignment: Qt.AlignTop
                Layout.fillWidth: true
                Layout.fillHeight: true

                RobotStatusPanel {
                    Layout.fillWidth: true
                    id: _statusPanel
                }

                Robot3DView {
                    id: _3dview

                }

//                RobotPositionInfoPanel {
//                    id: _xyzAndRpy
//                }

                RobotVelocityPanel {
                    id: _velocityPanel
                    Layout.fillWidth: true
                }
            }

            ColumnLayout {
                id: _jointMovement
                Layout.alignment: Qt.AlignTop
                Layout.preferredWidth: 300
                Layout.fillHeight: true

                RobotJointPanel {
                    id: _jointPanel
                    Layout.preferredWidth: 300
                    Layout.fillHeight: true
                }
            }

        }

    }



}






