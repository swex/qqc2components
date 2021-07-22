pragma Singleton

import QtQuick 2.12
import QtQml 2.12
import "material.js" as MaterialJS
import "awesome.js" as AwesomeJS
import "icomoon.js" as IcomoonJS

QtObject {
    property FontLoader fontAwesome: {
        source: "FontAwesome.otf"
    }
    property FontLoader fontIcoMoon: FontLoader {
        source: "IcoMoon-Free.ttf"
    }
    property FontLoader fontMaterial: FontLoader {
        source: "MaterialIcons-Regular.ttf"
    }
    readonly property bool amITrue: true

    readonly property var iconMaps: ({
                                         "material": MaterialJS.map,
                                         "awesome": AwesomeJS.map,
                                         "icomoon": IcomoonJS.map
                                     })
    readonly property var material: MaterialJS.map
    readonly property var fontFamilies: ({
                                             "material": "Material icons",
                                             "awesome": "FontAwesome",
                                             "icomoon": "icomoon"
                                         })

    Component.onCompleted: {
        console.log("IconFonts added ")
    }
}
