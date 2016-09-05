import QtQuick 2.7
import QtQuick.Controls 2.0

QtObject {
    id: action
    property string iconName
    property string name
    property string summary
    property string text: action.name
    property string tooltip: action.summary
    signal triggered
}
