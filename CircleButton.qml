import QtQuick 2.11
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.4
import qqc2components 1.0

RoundButton {
    id: button
    transformOrigin: Item.Bottom
    scale: 1
    radius: 56
    property string iconName
    property alias name: button.iconName
    property color backgroundColor: Theme.background
    property color iconColor
    onIconChanged: if (iconColor) {
                       contentItem.color = iconColor
                   }
    font.pixelSize: width * (3 / 4)
    property Flickable flickable
    Component.onCompleted: background.color = backgroundColor

    Connections {
        target: flickable
        onMovementStarted: scale = 0
        onMovementEnded: scale = 1
    }
    Behavior on scale {
        NumberAnimation {
            easing.type: Easing.OutQuart
            alwaysRunToEnd: true
            duration: Theme.transitionsTime
        }
    }
    readonly property string _fontFamily: name ? name.split("/")[0] : null
    readonly property string _iconName: name ? name.split("/")[1] : null
    font.family: _fontFamily ? FontAdder.fontFamilies[_fontFamily] : null

    text: _fontFamily ? (FontAdder.iconMaps[_fontFamily].hasOwnProperty(
                             _iconName) ? FontAdder.iconMaps[_fontFamily][_iconName] : "") : null
}
