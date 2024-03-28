import QtQuick 2.0
import Felgo 3.0
import "../base"
import  QtMultimedia 5.2

Item {


    Rectangle{
    //color: "red"

    width: 80
    height: 80
    anchors.top: parent.top
    anchors.topMargin: 40
    anchors.horizontalCenter: parent.horizontalCenter

    Image {
        id: l_img
        anchors.fill: parent
        source: "../../assets/img/yo-yo.jfif"
    }
    }
    Audio
    {
        id: play_false
        source: "../../assets/sound/false.mp3"
          }

    Audio
    {
        id: play_true
        source: "../../assets/sound/true.mp3"
          }


    property bool checked: false
    Grid{
        id:all1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 90
        spacing: 10
        columns: 4
        Button {
            id:bt0
            text: "Car"
            color: "#cce6ff"
            onClicked: {

                if(checked==true){
                opacity=0.4
                }
                color="red"
                 play_false.play()

            }

        }


        Button {
            id:bt1
            text: "Bus"
            color: "#cce6ff"

            onClicked: {
                if(checked==true){
                opacity=0.4
                }
            color="red"
                play_false.play()
            }
        }

        Button {
            id:bt2
            text: "pen"
            color: "#cce6ff"

            onClicked: {
                if(checked==true){
                opacity=0.4
                }
                color="red"
             play_false.play()
            }
        }

//        Button {
//            id:bt3
//            text: "حصان"
//            color: "#cce6ff"

//            onClicked: {
//                if(checked==true){
//                opacity=0.4
//                }
//                color="red"
//                 play_false.play()
//            }
//        }

//        Button {
//            id:bt4
//            text: "Banana"
//            color: "#cce6ff"

//            onClicked: {
//                if(checked==true){
//                opacity=0.4
//                }
//                color="red"
//                 play_false.play()
//            }
//        }

//        Button {
//            id:bt5
//            text: "Orange"
//            color: "#cce6ff"

//            onClicked: {
//                if(checked==true){
//                opacity=0.4
//                }
//                color="red"
//                 play_false.play()
//            }
//        }

        Button {
            id:bt6
            text: "Yo-Yo"
            color: "#cce6ff"

            onClicked: {



                checked=true
            bt6.color="#47d147"
            bt0.opacity=0.4
            bt1.opacity=0.4
            bt2.opacity=0.4
            play_true.play()
            }
        }

    }


}
