pragma Singleton
import QtQuick 2.7
import QtQml 2.2
import Qt.labs.settings 1.0
import QtQuick.Controls.Material 2.0

QtObject {
    id:globalTheme
    property color accent: Material.color(Material.DeepOrange)
    property color primary: Material.color(Material.Orange)
    property int theme: Material.Light
    property color disabled: Qt.lighter(Material.color(Material.Grey),1.2)
    property color background:Material.background
    property color foreground:Material.foreground

    readonly property Settings s: Settings {
        property alias accent: globalTheme.accent
        property alias primary: globalTheme.primary
        property alias theme: globalTheme.theme
        property alias disabled: globalTheme.disabled
        property alias background: globalTheme.background
        property alias foreground: globalTheme.foreground
    }
    Component.onCompleted: {console.log("Theme initialized")}
}
