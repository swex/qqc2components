pragma Singleton
import QtQuick 2.10
import QtQml 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Material 2.3

QtObject {
    id: globalTheme
    property color accent: Material.color(Material.DeepOrange)
    property color primary: Material.color(Material.Orange)
    property int theme: Material.Light
    property color disabled: Material.color(Material.Grey, Material.Shade400)
    property color background: Material.background
    property color foreground: Material.foreground
    property color errorText: Material.color(Material.Red)
    property int transitionsTime: 200
    readonly property Settings s: Settings {
        property alias accent: globalTheme.accent
        property alias primary: globalTheme.primary
        property alias theme: globalTheme.theme
        property alias disabled: globalTheme.disabled
        property alias background: globalTheme.background
        property alias foreground: globalTheme.foreground
        property alias errorTextColor: globalTheme.errorText
        property alias transitionsTime: globalTheme.transitionsTime
    }
    Component.onCompleted: {
        console.log("Theme initialized")
    }
}
