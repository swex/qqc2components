import QtQuick 2.11
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.4
import qqc2components 1.0

ToolButton {
    font.pixelSize: width / 2
    font.family: Utils.fontFromPath(icon.name)
    text: Utils.iconFromPath(icon.name)
}
