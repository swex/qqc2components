import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.5
import qqc2components 1.0

ToolButton {
    font.pixelSize: width / 2
    font.family: Utils.fontFromPath(icon.name)
    text: Utils.iconFromPath(icon.name)
}
