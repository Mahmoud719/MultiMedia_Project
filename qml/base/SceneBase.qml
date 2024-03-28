import QtQuick 2.0
import Felgo 3.0

// EMPTY SCENE

Scene {
    id: sceneBase
    opacity: 0
    visible: opacity > 0
    enabled: visible
    Behavior on opacity {
        NumberAnimation {property: "opacity"; easing.type: Easing.InOutQuad}
    }

}
