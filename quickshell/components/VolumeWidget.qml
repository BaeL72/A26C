import QtQuick
import Quickshell.Services.Pipewire

Item {
    id: root
    width: 6
    height: 100
	rotation: 180

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
        width: parent.width
		height: parent.height * parent.volume
        color: parent.muted ? root.mute_color : root.volume_scale_color

        topLeftRadius: 10
        topRightRadius: 10
        bottomRightRadius: root.volume_percentage > 90 ? 10 : 0
        bottomLeftRadius: root.volume_percentage > 90 ? 10 : 0
    }
}
