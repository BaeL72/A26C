import QtQuick
import Quickshell.Hyprland

Rectangle {
    id: root

    width: 30
    height: 30
    color: area.pressed ? "#ff4441" : "yellow"
    border.color: "black"
    border.width: 3
    radius: 10

    ExampleWindow {
        id: test

        GlobalShortcut {
            name: "toggleWindow"
            onPressed: test.visible = !test.visible
        }
    }
    MouseArea {
        id: area
        anchors.fill: parent
        onClicked: test.visible = !test.visible
    }
}
