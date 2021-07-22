import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.5
import qqc2components 1.0

ApplicationWindow {
    visible: true
    property var iconsModel: []
    width: 360
    height: 520
    Component.onCompleted: {
        for (var family in FontAdder.iconMaps) {
            for (var key in FontAdder.iconMaps[family]) {
                iconsModel.push(family + "/" + key)
            }
        }
        grid.model = iconsModel
    }
    ColumnLayout {
        anchors.fill: parent
        TextField {
            id: tf
            Layout.fillWidth: true
            placeholderText: "search filter"
            onTextEdited: {
                if (text.length == 0) {
                    grid.model = iconsModel
                    return
                }
                var reg = new RegExp(".*" + text + ".*", "gi")
                console.log(text, reg)
                var newModel = []
                for (var itemIndex in iconsModel) {
                    var item = iconsModel[itemIndex]
                    var matched = item.match(reg)
                    if (matched !== null) {
                        newModel.push(item)
                    }
                }
                grid.model = newModel
            }
        }
        GridView {
            clip: true
            id: grid
            Layout.fillWidth: true
            Layout.fillHeight: true
            cellWidth: Math.max(width / 32, 48)
            cellHeight: cellWidth
            delegate: ItemDelegate {
                id: item
                property real multiplier: hovered ? 1.5 : 1
                padding: 0
                scale: multiplier
                hoverEnabled: true
                ToolTip.visible: hovered
                ToolTip.text: modelData
                width: contentItem.width
                transformOrigin: Item.Center

                Behavior on scale {
                    NumberAnimation {
                        duration: 200
                    }
                }
                contentItem: FontIcon {
                    width: 32 * multiplier
                    name: modelData
                    color: "black"
                    shadow: true
                    Behavior on width {
                        NumberAnimation {
                            duration: 200
                        }
                    }
                }
            }
            ScrollBar.vertical: ScrollBar {
            }
        }
    }
}
