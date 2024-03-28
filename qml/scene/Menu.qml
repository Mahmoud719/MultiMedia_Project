import QtQuick 2.0
import Felgo 3.0
import "../base"


Scene {
    id: menuScene
    signal selectLevelPressed
    signal selectLevelPressed1
    signal creditsPressed
    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        Image {
            anchors.fill: parent
            source: "../../assets/Background.jpg"
            width:parent.width
            height:parent.height
        }
    }

    // menu
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 100
        spacing: 25
        Button {
            text: "English letters"
            onClicked: selectLevelPressed()
            color: "Red"
            radius: 5
        }
        Button {
            text: "Quizes"
            onClicked: selectLevelPressed1()
            color: "orange"
            radius: 5
        }
       Button{
            text: "Exit"
            onClicked: Qt.quit()
            color: "gray"
            radius: 5

       }
    }


}
