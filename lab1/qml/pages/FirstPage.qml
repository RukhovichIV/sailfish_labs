import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        Column {
            id: column
            width: page.width

            PageHeader {
                title: qsTr("Counter")
            }

            Button {
                id: button
                x: Theme.horizontalPageMargin
                text: qsTr("Increase value")
                width: parent.width
                onClicked: {
                    label.count++;
                }
            }

            Label {
                id: label
                x: Theme.horizontalPageMargin
                property int count: 0
                text: count
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }
    }
}
