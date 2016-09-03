import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import qqc2components 1.0


TabButton{
    id:control
    property string description
    property string iconString
    property TabBar _tabBar
    height: contentItem.implicitHeight
    implicitWidth: contentItem.implicitWidth
    width: Math.max((implicitWidth + leftPadding + rightPadding),(_tabBar.width/_tabBar.count))
    contentItem: Item{
        implicitWidth: row.implicitWidth
        implicitHeight: 48
        RowLayout{
            id:row
            implicitWidth: icon.implicitWidth+text.implicitWidth
            implicitHeight: parent.implicitHeight
            spacing: 0
            anchors.centerIn: parent
            FontIcon{
                id:icon
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: size
                color: index === _tabBar.currentIndex ? Theme.accent : Theme.disabled
                size:32
                name: iconString
                shadow: true
            }
            Text {
                id:text
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: implicitWidth
                text: description
                font.family: "Roboto"
                font.pixelSize: 14
//                font.capitalization: Font.AllUppercase // for some reason this causing text overlap :(
                color: Theme.foreground
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}
