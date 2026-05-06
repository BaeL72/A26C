import QtQuick
import Quickshell.Io

Item {
    id: root

    required property string mem_bar_color
    required property string mem_border_color
    required property string mem_font_color
    required property string mem_icon_color
    required property int mem_height

    property real memPercent: 0
    property string memStat: ""
    property int actual_mem_height: mem_height - 5

    width: 35
    height: mem_height

    Timer {
        interval: 5000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: {
            memStat.running = true;
        }
    }

    Process {
        id: memStat
        command: ["bash", "-c", "fastfetch --logo none --structure Memory | sed 's/Memory: //'"]
        stdout: StdioCollector {
            onStreamFinished: root.memStat = this.text
        }
    }

    Rectangle {
        id: mem_bar
        width: 220
        height: root.actual_mem_height
        color: "black"
        anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter
        border.width: 0
        border.color: root.mem_border_color
        radius: 15

        Text {
            anchors.centerIn: mem_bar
            anchors.horizontalCenterOffset: 13
            anchors.verticalCenterOffset: 0.5
            font.family: "Google Sans Flex"
            font.pixelSize: 15
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: root.mem_font_color
            text: root.memStat
        }
    }
    Rectangle {
        id: mem_circle
        visible: false
        width: root.actual_mem_height
        height: root.actual_mem_height
        color: root.mem_bar_color
        anchors.left: mem_bar.left
        anchors.verticalCenter: parent.verticalCenter
        border.width: 3
        border.color: root.mem_border_color
        radius: 15

        Text {
          visible: false
            anchors.centerIn: mem_circle
            anchors.horizontalCenterOffset: -1.5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 18
            color: root.mem_icon_color
            text: "󰍛"
        }
    }
}
