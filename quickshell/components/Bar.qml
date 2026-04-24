import Quickshell
import QtQuick
import QtQuick.Layouts

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: root
            property string whiteColor: "#e0e6e5"
            required property var modelData
            screen: modelData

            color: "#232023"

            anchors {
                top: true
                right: true
                left: true
            }

            implicitHeight: 20

            ClockWidget {
                anchors.centerIn: parent
                color: root.whiteColor
            }

            RowLayout {
                anchors.fill: parent
                anchors.margins: 8

                // WorkspacesWidget {}

                // Item {
                //     Layout.fillWidth: true
                // }
            }
            BatteryWidget {
                anchors.right: parent.right
                color: root.whiteColor
            }

            // VolumeWidget {
            //     anchors.left: parent.left
            //     textColor: root.whiteColor
            // }
            //
            NetworkWidget {
                anchors.left: parent.left
                colorOfText: root.whiteColor
            }
        }
    }
}
