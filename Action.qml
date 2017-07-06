import QtQuick 2.9
import QtQuick.Controls 2.2

QtObject {
    id: action
    property string iconName
    property string name
    property string summary
    property string text: action.name
    property string tooltip: action.summary
    property bool visible: true
    property Item item
    signal triggered
}
