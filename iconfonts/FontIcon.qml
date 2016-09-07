import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1
import "material.js" as MaterialJS
import "awesome.js" as AwesomeJS
import "icomoon.js" as IcomoonJS
import qqc2components 1.0

Text {
    id: text
    readonly property bool tellmeIfITrue: FontAdder.amITrue
    padding:0
    property bool valid: implicitWidth > 0
    property int size: 32
    property string name
    property bool shadow: false
    width: size
    height: size
    readonly property var iconMaps: {"material": MaterialJS.map ,"awesome":AwesomeJS.map,"icomoon":IcomoonJS.map}
    readonly property var fontFamilies:{"material":"Material icons","awesome":"FontAwesome","icomoon":"icomoon"}
    readonly property string fontFamily:name.split("/")[0]
    readonly property string iconName: name.split("/")[1]
    font.family: fontFamilies[fontFamily]
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    font.weight: Font.Light
    text: iconMaps[fontFamily].hasOwnProperty(iconName) ? iconMaps[fontFamily][iconName] : ""
    style: shadow ? Text.Raised : Text.Normal
    styleColor: Qt.rgba(0,0,0,0.2)
    font.pixelSize: size
    Behavior on color {
        ColorAnimation { duration: 200 }
    }
}

