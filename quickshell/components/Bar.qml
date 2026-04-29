import Quickshell
import QtQuick

PanelWindow {
    id: root

    property int generalHeight: 35

    property string backgroundColor: "#000000"
    property string separator1Color: "#ffffff"

    property string clock_DMY_fg: "#ffffff"
    property string clock_HMS_fg: "#ffffff"
    property string clock_cross_fg: "#ffffff"
    property string clock_clock_bg: "#000000"
    property string clock_border_color: "#000000"

    property string network_bg: "#000000"
    property string network_fg: "#ffffff"

    property string volume_scale_bg: "gray"
    property string volume_volume_scale_bg: "#ffffff"
    property string volume_mute_bg: "darkgray"

    property string memusage_bar_bg: "#000000"
    property string memusage_border_color: "#ffffff"
    property string memusage_fg: "#ffffff"
    property string memusage_icon_color: "#ffffff"

    property int workspaces_workspaces_count: 10
    property string workspaces_active_color: "#ffffff"
    property string workspaces_inactive_color: "#767f88"
    property string workspaces_inwork_color: "#ffda03"

    property bool clock_visible: true
    property bool network_visible: true
    property bool battery_visible: true
    property bool volume_visible: true
    property bool memusage_visible: true
    property bool workspaces_visible: true

    property bool separator1_visible: false

    anchors {
        top: true
        bottom: false
        left: true
        right: true
    }

    implicitHeight: generalHeight
    color: root.backgroundColor

    ClockWidget {
        id: clock

        anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter

        anchors.verticalCenterOffset: -3.5
        anchors.horizontalCenterOffset: -1

        visible: root.clock_visible

        dmy_fg: root.clock_DMY_fg
        hms_fg: root.clock_HMS_fg
        cross_fg: root.clock_cross_fg
        generalHeight: root.generalHeight
        clock_bg: root.clock_clock_bg
        border_color: root.clock_border_color
    }

    WorkspacesWidget {
        anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter

        anchors.horizontalCenterOffset: -430
        anchors.verticalCenterOffset: -1.5

        visible: root.workspaces_visible

        workspaces_height: root.generalHeight
        workspaces_count: root.workspaces_workspaces_count
        active_color: root.workspaces_active_color
        inactive_color: root.workspaces_inactive_color
        inwork_color: root.workspaces_inwork_color
    }

    MemUsageWidget {
        anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter

        anchors.horizontalCenterOffset: -850
        anchors.verticalCenterOffset: -2.5

        visible: root.memusage_visible

        mem_bar_color: root.memusage_bar_bg
        mem_border_color: root.memusage_border_color
        mem_font_color: root.memusage_fg
        mem_icon_color: root.memusage_icon_color
        mem_height: root.generalHeight
    }

    VolumeWidget {
        id: volume

        anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter

        anchors.horizontalCenterOffset: 820
        anchors.verticalCenterOffset: -2.5

        visible: root.volume_visible

        scale_color: root.volume_scale_bg
        volume_scale_color: root.volume_volume_scale_bg
        mute_color: root.volume_mute_bg
    }

    BatteryWidget {
        id: battery

        anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter

        anchors.horizontalCenterOffset: 930
        anchors.verticalCenterOffset: -3

        visible: root.battery_visible
    }

    NetworkWidget {
        id: network

        anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter

        anchors.horizontalCenterOffset: 890
        anchors.verticalCenterOffset: -3.5

        visible: root.network_visible

        netFont: root.network_fg
    }

    Text {
        id: separator1

        anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter

        anchors.horizontalCenterOffset: 185
        anchors.verticalCenterOffset: -2

        text: "|"
        color: root.separator1Color
        font.pixelSize: 20

        visible: root.separator1_visible
    }
}
