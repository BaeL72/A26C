import Quickshell
import QtQuick

Item {
    id: root

	required property int generalHeight

    required property string dmy_fg
    required property string hms_fg
    required property string cross_fg
    required property string clock_bg
    required property string border_color

    implicitHeight: generalHeight
	implicitWidth: 15

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    Text {
        id: hourDate

        text: Qt.formatDateTime(clock.date, "HH")
        font.family: "Google Sans Flex"
        font.pixelSize: 25
        font.bold: false
        color: root.hms_fg
		anchors.verticalCenter: parent.verticalCenter
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.horizontalCenterOffset: 8
    }

    Text {
        id: minDate

        text: Qt.formatDateTime(clock.date, "mm")
        font.family: "Google Sans Flex"
        font.pixelSize: 25
        font.bold: false
        color: root.hms_fg
        anchors.verticalCenter: parent.verticalCenter
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenterOffset: 25
		anchors.horizontalCenterOffset: 8
    }
}
