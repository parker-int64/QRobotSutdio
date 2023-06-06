import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


Drawer {
    id: menuDrawer
    width: 300
    height: parent.height

    NavigationBar {
        id: navBar
        width: parent.width
        Layout.fillHeight: true
    }
}
