import QtQuick 2.0
import Felgo 3.0
import "../base"
// EMPTY SCENE

SceneBase {
    id:gameScene
    property string activeLevelFileName
    property variant activeLevel

    function setLevel(fileName) {
        activeLevelFileName = fileName
    }
    Rectangle{
        anchors.fill: parent.gameWindowAnchorItem
        Image {
            anchors.fill: parent
            id: name
            source: "../../assets/img/background2.png"
        }

    }

    Button {
        text: "Back"
        color: "#66b3ff"
        anchors.right: gameScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.bottom: gameScene.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 10
        onClicked: {
            backButtonPressed()
            activeLevel = undefined
            activeLevelFileName = ""

        }
    }

    Text {
        anchors.left: gameScene.gameWindowAnchorItem.left
        anchors.leftMargin: 10
        anchors.top: gameScene.gameWindowAnchorItem.top
        anchors.topMargin: 10
        color: "white"
        font.pixelSize: 20

    }
    Loader {
        id: loader
        source: activeLevelFileName != "" ? "../levels/" + activeLevelFileName : ""
        onLoaded: {

            item.width = gameScene.width
            item.height = gameScene.height
            activeLevel = item
        }
    }

    Connections {
        target: activeLevel !== undefined ? activeLevel : null
    }
}
