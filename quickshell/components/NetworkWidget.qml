import QtQuick
import Quickshell.Io

Item {
    id: root
    property string network: "..."
    required property string colorOfText
    implicitWidth: label.implicitWidth + 16
    implicitHeight: 20

    Timer {
        interval: 5000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: net.running = true
    }

    Process {
        id: net
        command: ["nmcli", "-t", "-f", "IN-USE,SSID,SIGNAL", "dev", "wifi"]
        stdout: StdioCollector {
            onStreamFinished: {
                const line = this.text.trim().split("\n").find(l => l.startsWith("*"));
                if (line) {
                    const parts = line.split(":");
                    root.network = parts[1] + " " + parts[2];
                } else {
                    root.network = "Disconnected";
                }
            }
        }
    }

    Text {
        id: label
        anchors.centerIn: parent
        text: root.network
        color: root.colorOfText
    }
}
