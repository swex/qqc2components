import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import qqc2components 1.0

Text {
    id: text
    padding: 0
    property bool valid: implicitWidth > 0
    property string name
    property bool shadow: false
    width: implicitWidth
    height: implicitHeight
    readonly property string fontFamily: name.split("/")[0]
    readonly property string iconName: name.split("/")[1]
    font.family: FontAdder.fontFamilies[fontFamily]
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    font.weight: Font.Light
    text: FontAdder.iconMaps[fontFamily].hasOwnProperty(
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
