import QtQuick 2.0
import Felgo 3.0
import "../base"

SceneBase {
    id: selectLevelScene
    signal levelPressed(string selectedLevel)
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
        anchors.right: selectLevelScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.bottom: selectLevelScene.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 10
        onClicked: backButtonPressed()
        color: "red"
    }

    Grid {
        anchors.centerIn: parent
        spacing: 5
        columns: 7
        Button {
            text: "A"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level7.qml")
            }
        }
        Button {
            text: "B"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level6.qml")
            }
        }
        Button {
            text: "C"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level5.qml")
            }
        }
        Button {
            text: "D"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level4.qml")
            }
        }
        Button {
            text: "E"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level3.qml")
            }
        }
        Button {
            text: "F"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level2.qml")
            }
        }
        Button {
            text: "G"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level1.qml")
            }
        }

        Button {
            text: "H"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level14.qml")
            }
        }
        Button {
            text: "I"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level13.qml")
            }
        }
        Button {
            text: "J"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level12.qml")
            }
        }
        Button {
            text: "K"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level11.qml")
            }
        }
        Button {
            text: "L"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level10.qml")
            }
        }

        Button {
            text: "M"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level9.qml")
            }
        }
        Button {
            text: "N"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level8.qml")
            }
        }
        Button {
            text: "O"
            width: 50
            height: 50
            onClicked: {
                 levelPressed("Level21.qml")
            }
        }
        Button {
            text: "P"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level20.qml")
            }
        }
        Button {
            text: "Q"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level19.qml")
            }
        }
        Button {
            text: "R"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level18.qml")
            }
        }
        Button {
            text: "S"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level17.qml")
            }
        }
        Button {
            text: "T"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level16.qml")
            }
        }
        Button {
            text: "U"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level15.qml")
            }
        }
        Button {
            text: "V"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level28.qml")
            }
        }
        Button {
            text: "W"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level27.qml")
            }
        }
        Button {
            text: "X"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level26.qml")
            }
        }
        Button {
            text: "Y"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level25.qml")
            }
        }
        Button {
            text: "Z"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level24.qml")
            }
        }

    }


    }
