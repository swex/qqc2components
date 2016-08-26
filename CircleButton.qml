import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0

Button{
    id:button
    transformOrigin: Item.Bottom
    scale: 1
    width: 48
    height: 48
    property  alias iconName:icon.name
    property color backgroundColor
    property color iconColor
    property Flickable flickable
    Connections{
        target:flickable
        onMovementStarted: scale = 0
        onMovementEnded: scale = 1
    }
    padding: Math.max(width,height)/4

    Behavior on scale{
        NumberAnimation {
            easing.type: Easing.OutQuart;
            alwaysRunToEnd: true;
            duration:50
        }
    }

    contentItem: FontIcon {
        id:icon
        name: iconName
        color: button.iconColor
        size: background.height/2
        shadow:true
    }
    background:
        Rectangle {
        color: button.enabled ? button.backgroundColor:Qt.tint(button.backgroundColor,Qt.rgba(0,0,0,0.2))
        radius: Math.max(width,height) / 2
        opacity: button.enabled ? (button.pressed ? 0.75 : 1.0):1
        layer.enabled: true
        layer.effect: DropShadow {
            verticalOffset: 3
            horizontalOffset: 1
            color: "lightgrey"
            samples: button.pressed ? 20 : 10
            spread: 0.5
        }
    }
}
