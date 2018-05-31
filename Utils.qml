pragma Singleton
import QtQuick 2.11
import QtQml 2.11
import "js/moment-with-locales.js" as SingleMoment

QtObject {
    id: globalUtils
    property var moment: SingleMoment.moment
    function kopToRub(intKopeika) {
        var rub = Math.floor(intKopeika / 100)
        var kop = intKopeika % 100
        return rub + (kop !== 0 ? ("." + ("00" + kop).substring(2)) : "")
    }
    function iconFromPath(path) {
        var family = path ? path.split("/")[0] : null
        var name = path ? path.split("/")[1] : null
        return FontAdder.iconMaps[family][name]
    }
    function fontFromPath(path) {
        var family = path ? path.split("/")[0] : null
        return FontAdder.fontFamilies[family]
    }
    Component.onCompleted: {
        console.log("Util initialized")
    }
}
