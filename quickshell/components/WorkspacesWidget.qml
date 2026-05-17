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
	property var workspaceColors: ["#bb080b", "#255bfc", "#8aa730", "#e8a736", "#c200fb", "#0db9d7", "#ffffff", "#ff5e2c", "#f75590", "#e0ffc2"]

    height: actual_workspaces_height
    anchors.verticalCenter: parent.verticalCenter

    ColumnLayout {
        id: row_root
        anchors.centerIn: parent
        spacing: 0

        Repeater {
            model: root.workspaces_count

            Text {
                property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
                property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
				color: /* isActive ? root.active_color :*/ (ws ? root.workspaceColors[index % root.workspaceColors.length] : root.inactive_color)
				textFormat: Text.RichText
                text: isActive ? index === 0 ? `󰊠<br><span style="font-size:27px; color:${root.workspaceColors[index % root.workspaceColors.length + 1]}"></span>` : index === workspaces_count - 1 ? `<span style="font-size:27px; color:${root.workspaceColors[index % root.workspaceColors.length - 1]}"></span><br>󰊠` : `<span style="font-size:27px; color:${root.workspaceColors[index % root.workspaceColors.length - 1]}"></span><br>󰊠<br><span style="font-size:27px; color:${root.workspaceColors[index % root.workspaceColors.length + 1]}"></span>` : "󱙝"  // ""// index + 1
				lineHeight: 0.8
                font.pixelSize: 30
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
