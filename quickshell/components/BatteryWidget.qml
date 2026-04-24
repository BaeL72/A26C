import Quickshell.Services.UPower
import QtQuick

Text {
    property var battery: UPower.displayDevice

    text: {
        switch (battery.state) {
        case UPowerDeviceState.Charging:
            return (battery.percentage * 100) + " | " + "Charging";
        case UPowerDeviceState.Discharging:
            return (battery.percentage * 100) + " | " + "Discharging";
        default:
            return (battery.percentage * 100) + " | " + "fully charged";
        }
    }
    color: "black"
}
