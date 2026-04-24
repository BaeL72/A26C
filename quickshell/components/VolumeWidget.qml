import Quickshell.Services.Pipewire
import QtQuick

Rectangle {
    id: root
    required property string textColor

    Item {
        PwObjectTracker {
            objects: [Pipewire.defaultAudioSink, Pipewire.defaultAudioSource]
        }
    }

    Text {

        property bool muted: Pipewire.defaultAudioSink.audio.muted

        text: Math.round(Pipewire.defaultAudioSink.audio.volume * 100) + "%" + " | " + muted
        color: root.textColor
    }
}
