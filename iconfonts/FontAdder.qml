pragma Singleton
import QtQuick 2.7
import QtQml 2.2

QtObject {
    readonly property FontLoader fontAwesome:FontLoader{ source: "FontAwesome.otf" }
    readonly property FontLoader fontIcoMoon:FontLoader{ source: "IcoMoon-Free.ttf" }
    readonly property FontLoader fontMaterial:FontLoader{ source: "MaterialIcons-Regular.ttf" }
    Component.onCompleted: {console.log("IconFonts added ")}
}
