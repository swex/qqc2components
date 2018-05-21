import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import qqc2components 1.0

ToolButton {
    font.pixelSize: width / 2
    font.family: Utils.fontFromPath(icon.name)
    text: Utils.iconFromPath(icon.name)
}
