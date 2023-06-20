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
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.maximumWidth: 1200
                    Layout.maximumHeight: 800
                    Layout.alignment: Qt.AlignHCenter

                }

                RobotPositionInfoPanel {
                    id: _xyzAndRpy
                    Layout.fillWidth: true
                    Layout.maximumWidth: 860
                    Layout.alignment: Qt.AlignHCenter
                    Layout.topMargin: 20
                }

                RobotVelocityPanel {
                    id: _velocityPanel
                    Layout.fillWidth: true
                    Layout.maximumWidth: 800
                    Layout.topMargin: 10
                    Layout.alignment: Qt.AlignHCenter
                }
            }

            ColumnLayout {
                id: _jointMovement
                Layout.alignment: Qt.AlignTop

                Layout.fillHeight: true

                RobotJointPanel {
                    id: _jointPanel
                    Layout.preferredWidth: 280
                    Layout.fillHeight: true
                }
            }

        }

    }



}






