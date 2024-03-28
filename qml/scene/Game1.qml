import QtQuick 2.0
import Felgo 3.0
import "../base"
// EMPTY SCENE

SceneBase {
    id:gameScene1
    property string activeLevelFileName1
    property variant activeLevel1

    function setLevel(fileName) {
        activeLevelFileName1 = fileName
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
        anchors.right: gameScene1.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.bottom: gameScene1.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 10
        onClicked: {
            backButtonPressed()
            activeLevel1 = undefined
            activeLevelFileName1 = ""

        }
    }

    Text {
        anchors.left: gameScene1.gameWindowAnchorItem.left
        anchors.leftMargin: 10
        anchors.top: gameScene1.gameWindowAnchorItem.top
        anchors.topMargin: 10
        color: "white"
        font.pixelSize: 20

    }
    Loader {
        id: loader
        source: activeLevelFileName1 != "" ? "../levels1/" + activeLevelFileName1 : ""
        onLoaded: {

            item.width = gameScene.width
            item.height = gameScene.height
            activeLevel1 = item
        }
    }

    Connections {
        target: activeLevel1 !== undefined ? activeLevel : null
    }
}
