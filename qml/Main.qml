import Felgo 3.0
import QtQuick 2.0
import "scene"

GameWindow {
    id: window

    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"



    // the size of the Window can be changed at runtime by pressing Ctrl (or Cmd on Mac) + the number keys 1-8
    // the content of the logical scene size (480x320 for landscape mode by default) gets scaled to the window size based on the scaleMode
    // you can set this size to any resolution you would like your project to start with, most of the times the one of your main target device
    // this resolution is for iPhone 4 & iPhone 4S
    screenWidth: 1000
    screenHeight:600
    EntityManager {
        id: entityManager
    }

    Menu {
        id: menuScene
        onSelectLevelPressed: window.state = "selectLevel"
        onSelectLevelPressed1: window.state = "selectLevel1"
        onCreditsPressed: window.state = "credits"
        onBackButtonPressed: {
            nativeUtils.displayMessageBox(qsTr("Really quit the game?"), "", 2);
        }
        Connections {
            target: nativeUtils
            onMessageBoxFinished: {
                if(accepted && window.activeScene === menuScene)
                    Qt.quit()
            }
        }
    }

    SelectLevelScene {
        id: selectLevelScene
        onLevelPressed: {
            gameScene.setLevel(selectedLevel)
            window.state = "game"

        }
        onBackButtonPressed: window.state = "menu"
    }
    SelectLevelScene11 {
        id: selectLevelScene1
        onLevelPressed1: {
            gameScene.setLevel(selectedLevel1)
            window.state = "game"

        }
        onBackButtonPressed: window.state = "menu"
    }

    Game {
        id: gameScene
        onBackButtonPressed: window.state = "selectLevel"
    }
    Game1 {
        id: gameScene1
        onBackButtonPressed: window.state = "selectLevel1"
    }
    state: "menu"
    activeScene: menuScene

    states: [
        State {
            name: "menu"
            PropertyChanges {target: menuScene; opacity: 1}
            PropertyChanges {target: window; activeScene: menuScene}
        },
        State {
            name: "selectLevel"
            PropertyChanges {target: selectLevelScene; opacity: 1}
            PropertyChanges {target: window; activeScene: selectLevelScene}
        },
        State {
            name: "selectLevel1"
            PropertyChanges {target: selectLevelScene1; opacity: 1}
            PropertyChanges {target: window; activeScene: selectLevelScene1}
        },
        State {
            name: "game"
            PropertyChanges {target: gameScene; opacity: 1}
            PropertyChanges {target: window; activeScene: gameScene}
        },
        State {
            name: "game1"
            PropertyChanges {target: gameScene1; opacity: 1}
            PropertyChanges {target: window; activeScene: gameScene1}
        }


    ]
}




