import QtQuick 2.11
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.4
import qqc2components 1.0

Text {
    id: text
    padding: 0
    property bool valid: implicitWidth > 0
    property string name
    property bool shadow: false
    clip: true
    property int size
    height: implicitHeight
    readonly property string fontFamily: name ? name.split("/")[0] : null
    readonly property string iconName: name ? name.split("/")[1] : null
    font.family: fontFamily ? FontAdder.fontFamilies[fontFamily] : null
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    font.weight: Font.Light
    text: fontFamily ? (FontAdder.iconMaps[fontFamily].hasOwnProperty(
                            iconName) ? FontAdder.iconMaps[fontFamily][iconName] : "") : null
    style: shadow ? Text.Raised : Text.Normal
    styleColor: Qt.rgba(0, 0, 0, 0.2)
    font.pixelSize: size ? size : width
    Behavior on color {
        ColorAnimation {
            duration: 200
        }
    }
}
