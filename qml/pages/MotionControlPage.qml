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


        RowLayout {
            anchors.fill: parent


            ColumnLayout {
                id: _tcpMovement
                Layout.preferredWidth: 300
                Layout.fillHeight: true

                RobotTCPPanel {
                    Layout.fillHeight: true
                    id: _tcpPanel
                }
            }

            ColumnLayout {
                id: _robot3DView
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            ColumnLayout {
                id: _jointMovement
                Layout.preferredWidth: 300
                Layout.fillHeight: true
            }
        }
    }



}






