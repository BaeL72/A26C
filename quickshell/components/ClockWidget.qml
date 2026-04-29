import Quickshell
import QtQuick

Item {
    id: root

    required property string dmy_fg
    required property string hms_fg
    required property string cross_fg
    required property int generalHeight
    required property string clock_bg
    required property string border_color

    implicitHeight: generalHeight

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }
    Rectangle {
        id: clock_border

        implicitHeight: root.generalHeight
        implicitWidth: 250
        color: root.clock_bg
        border.color: root.border_color
        border.width: 3
        radius: 45

        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -5
    }

    Row {
        anchors.centerIn: parent
        spacing: 8

        Text {
            id: monthYearDate

            text: Qt.formatDateTime(clock.date, "dd MMMM yyyy")
            font.family: "Google Sans Flex"
            font.pixelSize: 15
            font.weight: Font.Medium
            color: root.dmy_fg
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 1
        }

        Text {
            id: cross

            text: ""
            color: root.cross_fg
            font.pixelSize: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 1
        }

        Text {
            id: hourMinDate

            text: ' ' + Qt.formatDateTime(clock.date, "HH:mm:ss")
            font.family: "Google Sans Flex"
            font.pixelSize: 21
            font.weight: Font.Medium
            font.bold: false
            width: 91
            color: root.hms_fg
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 1.6
        }
    }
}
