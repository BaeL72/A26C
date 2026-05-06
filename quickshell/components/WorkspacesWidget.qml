import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Item {
    id: root

    required property int workspaces_height
    required property int workspaces_count
    required property string active_color
    required property string inactive_color
    required property string inwork_color

    property int actual_workspaces_height: workspaces_height - 5

    width: 120
    height: actual_workspaces_height
    anchors.verticalCenter: parent.verticalCenter

    RowLayout {
        id: row_root
        anchors.centerIn: parent
        spacing: 10

        Repeater {
            model: root.workspaces_count

            Text {
                property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
                property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
                color: isActive ? root.active_color : (ws ? root.inwork_color : root.inactive_color)
                text: index + 1
                font.pixelSize: isActive ? 18 : 15
                font.family: "Google Sans Flex"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Item {
            Layout.fillWidth: true
        }
    }
}
