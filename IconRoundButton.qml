import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.5
import qqc2components 1.0

RoundButton {
    id: control
    font.pixelSize: width / 2
    font.family: Utils.fontFromPath(icon.name)
    text: Utils.iconFromPath(icon.name)
    Component.onCompleted: {
        _iconColor = Qt.binding(function () {
            return control.icon.color
        })
    }
    property color _iconColor
    on_IconColorChanged: contentItem.color = _iconColor
}
