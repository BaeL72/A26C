import QtQuick
import Quickshell.Io

Item {
    id: root

    required property string netFont

    property int netSignal: -1
    property string netStatus: ""

    implicitWidth: 25
    implicitHeight: 25
    anchors.verticalCenter: parent.verticalCenter

    Timer {
        interval: 5000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: netCheck.running = true
    }

    Process {
        id: netCheck

        command: ["bash", "-c", "~/.config/quickshell/scripts/networkSignal.sh"]

        stdout: StdioCollector {
            onStreamFinished: {
                root.netSignal = parseInt(this.text);

                if (root.netSignal >= 90) {
                    root.netStatus = "󰤨";
                } else if (root.netSignal < 90 && root.netSignal >= 75) {
                    root.netStatus = "󰤥";
                } else if (root.netSignal < 75 && root.netSignal >= 50) {
                    root.netStatus = "󰤢";
                } else if (root.netSignal < 50 && root.netSignal >= 25) {
                    root.netStatus = "󰤟";
                } else if (root.netSignal < 25) {
                    root.netStatus = "󰤯";
                } else {
                    root.netStatus = "󰤭";
                }
            }
        }
    }

    Text {
        id: label

        color: root.netFont
        anchors.centerIn: parent
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 21
        font.family: "Google Sans Flex"
        text: root.netStatus
    }
}
