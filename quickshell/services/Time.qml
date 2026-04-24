pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root
    property string time: {
        Qt.formatDateTime(clock.date, "| dddd  MMMM dd  yyyy  HH:mm:ss |");
    }

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }
}
