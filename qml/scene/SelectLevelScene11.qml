import QtQuick 2.0
import Felgo 3.0
import "../base"

SceneBase {
    id: selectLevelScene1
    signal levelPressed1(string selectedLevel1)
    // background
    Rectangle{
        anchors.fill: parent.gameWindowAnchorItem
    Image {
        anchors.fill: parent
        id: name
        source: "../../assets/background1.jpg"
    }
    }
    //back button
    Button {
        text: "Back"
        anchors.right: selectLevelScene1.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.bottom: selectLevelScene1.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 10
        onClicked: menuScene()
        color: "red"
    }

    Grid {
        anchors.centerIn: parent
        spacing: 5
        columns: 7
        Button {
            text: "Q1"
            width: 50
            height: 50
            onClicked: {
                levelPressed1("Q1.qml")
            }
        }
        Button {
            text: "Q2"
            width: 50
            height: 50
            onClicked: {
                levelPressed1("Q2.qml")
            }
        }


        Button {
            text: "Q3"
            width: 50
            height: 50
            onClicked: {
                levelPressed1("Q3.qml")
            }
        }

    }


    }
