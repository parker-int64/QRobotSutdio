import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


//
//  This is the drawer on the left of the page
//  Default: closed.

Drawer {
    id: menuDrawer
    width: 360
    height: parent.height

    NavigationDrawer {
        id: navDrawer
        width: parent.width
        Layout.fillHeight: true
    }
}
