import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Rectangle {
    Layout.preferredHeight: width
    Layout.preferredWidth: height
    width: 48
    height: 48
    radius: width / 8
    border.color: Qt.rgba(0, 0, 0, 0.2)
    border.width: 1
    property alias text: label.text
    property alias textColor: label.color
    Label {
        id: label
        fontSizeMode: Text.Fit
        font.pixelSize: 72
        font.bold: true
        style: Text.Outline
        styleColor: Qt.rgba(0, 0, 0, 0.2)
        anchors.fill: parent
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
