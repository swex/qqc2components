pragma Singleton
import QtQuick 2.7
import QtQml 2.2
import "js/moment-with-locales.js" as SingleMoment

QtObject {
    id:globalUtils
    property var moment:SingleMoment.moment
    Component.onCompleted: {console.log("Util initialized")}
}
