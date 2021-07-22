pragma Singleton
import QtQuick 2.12

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

    Component.onCompleted: {
        console.log("Theme initialized")
    }
}
