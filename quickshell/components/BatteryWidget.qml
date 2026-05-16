import Quickshell.Services.UPower
import QtQuick

Item {
    id: root

    property var battery: UPower.displayDevice
    property int battery_lvl_in_percents: battery.percentage * 100

    property string battery_color_bg
    property string battery_color_fg
    property string battery_empty_color_bg: "#51565a"

    property string charging_color: "#6f9940"
    property string discharging_color_1: "#ffffc0"
    property string discharging_color_2: "#ffff00"
    property string discharging_color_3: "#ed0004"
    property string fully_charged_color: "#d6efff"
    property string error_color: "#ff00ff"

    property string white_fg: "#ffffff"
    property string black_fg: "#000000"

    implicitHeight: 100
    implicitWidth: 18
    anchors.verticalCenter: parent.verticalCenter
	rotation: 180

    Rectangle {
        id: volume_empty_bar

        anchors.fill: parent
        radius: 15
        color: root.battery_empty_color_bg
		height: root.implicitHeight
    }

    Rectangle {
		width: parent.width
        height: volume_empty_bar.height * root.battery.percentage
        topLeftRadius: 15
        topRightRadius: 15
        bottomRightRadius: root.battery_lvl_in_percents >= 95 ? 15 : root.battery_lvl_in_percents < 100 && root.battery_lvl_in_percents > 80 ? 6 : 3
        bottomLeftRadius: root.battery_lvl_in_percents === 100 ? 15 : root.battery_lvl_in_percents < 100 && root.battery_lvl_in_percents > 80 ? 6 : 3
		color: {
			switch (root.battery.state) {
				case UPowerDeviceState.Charging:
					root.battery_color_bg = root.charging_color
					return root.battery_color_bg
				case UPowerDeviceState.Discharging:
					root.battery_color_bg = root.discharging_color_3
					return root.battery_color_bg
				case UPowerDeviceState.FullyCharged:
					root.battery_color_bg = root.fully_charged_color
					return root.battery_color_bg
				default:
					root.battery_color_bg = "black"
					return root.battery_color_bg
			}
		}
    }

    // Text {
    //     id: battery_widget

    //     color: root.battery_color_fg
    //     font.pixelSize: 16
    //     font.family: "Google Sans Flex"
    //     verticalAlignment: Text.AlignVCenter
    //     anchors.centerIn: parent
    //     anchors.verticalCenterOffset: 0
    //     text: {
    //         let battery_level = root.battery.percentage * 100;

    //         switch (root.battery.state) {
    //         case UPowerDeviceState.Charging:
    //             root.battery_color_bg = root.charging_color;
    //             root.battery_color_fg = root.black_fg;
    //             battery_widget.anchors.verticalCenterOffset = 0.5;
    //             return "󱐋" + (battery_level);
    //         case UPowerDeviceState.Discharging:
    //             root.battery_color_fg = root.black_fg;
    //             if (battery_level >= 75) {
    //                 root.battery_color_bg = root.fully_charged_color;
    //                 battery_widget.anchors.verticalCenterOffset = 1.5;
    //             } else if (battery_level < 75 && battery_level >= 50) {
    //                 root.battery_color_bg = root.discharging_color_1;
    //                 battery_widget.anchors.verticalCenterOffset = 1.5;
    //             } else if (battery_level < 50 && battery_level >= 25) {
    //                 root.battery_color_bg = root.discharging_color_2;
    //                 battery_widget.anchors.verticalCenterOffset = 1.5;
    //             } else if (battery_level < 25) {
    //                 root.battery_color_bg = root.discharging_color_3;
    //                 battery_widget.anchors.verticalCenterOffset = 1.5;
    //             } else {
    //                 root.battery_color_bg = root.error_color;
    //                 battery_widget.anchors.verticalCenterOffset = 1.5;
    //             }
    //             return (battery_level);
    //         case UPowerDeviceState.FullyCharged:
    //             root.battery_color_bg = root.fully_charged_color;
    //             root.battery_color_fg = root.black_fg;
    //             battery_widget.anchors.verticalCenterOffset = 1.5;
    //             return (battery_level);
    //         default:
    //             return "N/A";
    //         }
    //     }
    // }
}
