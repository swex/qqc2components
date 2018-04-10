import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import qqc2components 1.0

RoundButton {
    id: button
    transformOrigin: Item.Bottom
    scale: 1
    radius: 56
    property alias iconName: icon.name
    property color backgroundColor: Theme.background
    property alias iconColor: icon.color
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

    contentItem: FontIcon {
        id: icon
        name: iconName
        width: background.height / 2
        shadow: true
    }
}
