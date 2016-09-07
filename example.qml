import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.1
import "iconfonts/material.js" as MaterialJS
import "iconfonts/awesome.js" as AwesomeJS
import "iconfonts/icomoon.js" as IcomoonJS
import "."

ApplicationWindow {
    visible: true
    property var iconsModel:[]
    width: 360
    height: 520
    readonly property var iconMaps: {"material": MaterialJS.map ,"awesome":AwesomeJS.map,"icomoon":IcomoonJS.map}
    Component.onCompleted: {
        for(var family  in iconMaps){
            for (var key in iconMaps[family]){
                iconsModel.push(family+"/"+key)
            }
        }
        grid.model=iconsModel
    }
    FontLoader { source: "iconfonts/FontAwesome.otf" }
    FontLoader { source: "iconfonts/IcoMoon-Free.ttf" }
    FontLoader { source: "iconfonts/MaterialIcons-Regular.ttf" }
    GridView{
        id:grid
        anchors.fill: parent
        cellWidth: Math.max(width/10,48)
        cellHeight:cellWidth
        delegate: 
            FontIcon{
            size: 32
            name: modelData
            color: "black"
            shadow: true
        }
        ScrollBar.vertical: ScrollBar { }
    }
}
