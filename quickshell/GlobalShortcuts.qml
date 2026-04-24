import Quickshell
import Quickshell.Hyprland

Scope {
    property var test

    GlobalShortcut {
        appid: "quickshell"
        name: "toggleWindow"
        onPressed: test.visible = !test.visible
    }
}
