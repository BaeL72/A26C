import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

RowLayout {
    spacing: 6

    Repeater {
        model: Hyprland.workspaces

        Rectangle {
            required property var modelData

            width: 10
            height: 10
            radius: 5

            color: modelData.id === Hyprland.focusedWorkspace.id ? "#7aa2f7" : "#444b6a"

            Behavior on color {
                ColorAnimation {
                    duration: 150
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: Hyprland.dispatch("workspace " + modelData.id)
            }
        }
    }
}
