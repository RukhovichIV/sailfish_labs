import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Lab #4")
            }

            // Task #1
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task #1")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Enter the number:")
            }

            TextField {
                id: numberTextField;
                width: parent.width;
                inputMethodHints: Qt.ImhFormattedNumbersOnly;
                label: "Number"
                placeholderText: label
            }

            // Tasks #2, #3
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Tasks #2, #3")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Button {
                id: pressedButton
                property bool is_pressed: false
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Button"
                down: false
                onClicked: {
                    is_pressed = !is_pressed
                    if (is_pressed) {
                        down = true
                        pressedLabel.text = "Is pressed"
                    } else {
                        down = false
                        pressedLabel.text = "Is not pressed"
                    }
                }
            }

            Label {
                id: pressedLabel
                text: "Is still not pressed"
                anchors.horizontalCenter: parent.horizontalCenter;
            }

            // Task #4
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task #4")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            ValueButton {
                id: counterButton
                anchors.horizontalCenter: parent.horizontalCenter;
                property int count : 0
                value: qsTr("Count is: " + count)
                description: "Counts the number of taps"
                onClicked: {
                    count++;
                }
            }

            // Task #5
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task #5")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            DatePicker {
                date: new Date();
                daysVisible: true
                monthYearVisible: true
                onDateTextChanged: {
                    console.log(dateText);
                }
            }

            // Task #6
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task #6")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            TimePicker {
                anchors.horizontalCenter: parent.horizontalCenter;
                hour: 0
                minute: 0
                onTimeTextChanged: {
                    console.log(timeText);
                }
            }

            // Task #7
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task #7")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            ComboBox {
                label: "Drop-down list"
                menu: ContextMenu {
                    id: menu
                    MenuItem { text: "You" }
                    MenuItem { text: "Can" }
                    MenuItem { text: "Choose" }
                    MenuItem { text: "Any" }
                    MenuItem { text: "Of" }
                    MenuItem { text: "The" }
                    MenuItem { text: "Elements" }
                }
                onCurrentIndexChanged: { console.log("Current menu item: " + menu.children[currentIndex].text) }
            }

            // Task #8
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task #8")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Switch {
                anchors.horizontalCenter: parent.horizontalCenter;
                id: switchItem
            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter;
                x: Theme.horizontalPageMargin
                text: qsTr(switchItem.checked ? "On" : "Off")
            }

            // Task #9
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task #9")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Slider {
                width: parent.width
                minimumValue: 0
                maximumValue: 100
                stepSize: 1
                value: 42
                label: "The current value is: " + value
            }

            Rectangle {
                color: "transparent"
                width: 50
                height: 500
            }
        }
    }
}
