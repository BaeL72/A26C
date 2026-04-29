import QtQuick
import Quickshell.Services.Pipewire

Item {
    id: root
    width: 100
    height: 6

    required property string scale_color
    required property string volume_scale_color
    required property string mute_color

    anchors.verticalCenter: parent.verticalCenter

    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }

    property bool muted: Pipewire.defaultAudioSink?.audio.muted ?? false
    property real volume: Pipewire.defaultAudioSink?.audio.volume ?? 0
    property int volume_percentage: Math.round(volume * 100)

    // background
    Rectangle {
        anchors.fill: parent
        color: root.scale_color
        radius: 10
    }

    // fill — grey when muted
    Rectangle {
        width: parent.width * parent.volume
        height: parent.height
        color: parent.muted ? root.mute_color : root.volume_scale_color
        topLeftRadius: 10
        bottomLeftRadius: 10

        topRightRadius: root.volume_percentage > 90 ? 10 : 0
        bottomRightRadius: root.volume_percentage > 90 ? 10 : 0
    }
}
