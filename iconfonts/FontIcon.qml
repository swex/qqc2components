import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import "."

Text {
    id: text
    padding: 0
    property bool valid: implicitWidth > 0
    property string name
    property bool shadow: false
    width: implicitWidth
    height: implicitHeight
    readonly property var iconMaps: ({
                                         material: MaterialJS.map,
                                         awesome: AwesomeJS.map,
                                         icomoon: IcomoonJS.map
                                     })
    readonly property var fontFamilies: ({
                                             material: "Material icons",
                                             awesome: "FontAwesome",
                                             icomoon: "icomoon"
                                         })
    readonly property string fontFamily: name.split("/")[0]
    readonly property string iconName: name.split("/")[1]
    font.family: FontAdder.fontFamilies[fontFamily]
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    font.weight: Font.Light
    text: iconMaps[fontFamily].hasOwnProperty(
              iconName) ? iconMaps[fontFamily][iconName] : ""
              iconName) ? FontAdder.iconMaps[fontFamily][iconName] : ""
    style: shadow ? Text.Raised : Text.Normal
    styleColor: Qt.rgba(0, 0, 0, 0.2)
    font.pixelSize: width
    Behavior on color {
        ColorAnimation {
            duration: 200
        }
    }
}
