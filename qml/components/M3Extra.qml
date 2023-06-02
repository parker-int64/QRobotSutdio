pragma Singleton
import QtQuick

Item {
    QtObject {
        property real dpFactor: real(Screen.pixelDensity * 0.15875)
    }
}
