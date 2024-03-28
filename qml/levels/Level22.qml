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
        source: "../../assets/img/png-clipart-white-dog-dog-puppy-cartoon-dogs-white-cat-like-mammal-thumbnail.png"
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
            text: "ضفدع"
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
            text: "كلب"
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
            text: "قطه"
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
            id:bt3
            text: "حصان"
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
            id:bt4
            text: "أسد"
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
            id:bt5
            text: "زرافه"
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
            id:bt6
            text: "كلب"
            color: "#cce6ff"

            onClicked: {


                checked=true
            bt6.color="#47d147"
            bt1.opacity=0.4
            bt2.opacity=0.4
            bt3.opacity=0.4
            bt4.opacity=0.4
            bt5.opacity=0.4
            bt0.opacity=0.4
            bt7.opacity=0.4
            play_true.play()



            }
        }

        Button {
            id:bt7
            text: "ثعلب"
            color: "#cce6ff"

            onClicked: {
                if(checked==true){
                opacity=0.4
                }
                color="red"
                 play_false.play()
            }
        }






    }

}
