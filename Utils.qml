pragma Singleton
import QtQuick 2.7
import QtQml 2.2
import "js/moment-with-locales.js" as SingleMoment

QtObject {
    id:globalUtils
    property var moment:SingleMoment.moment
    function kopToRub(intKopeika){
        var rub = Math.floor(intKopeika/100)
        var kop = intKopeika%100
        return rub+(kop!==0?("."+("00"+kop).substring(2)):"")
    }
    Component.onCompleted: {console.log("Util initialized")}
}
