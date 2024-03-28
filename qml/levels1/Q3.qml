import QtQuick 2.0
import Felgo 3.0
import  QtMultimedia 5.2

Item {
    id:item1
    Text {
        x:120
        y:30
        id: header1
        text: qsTr("choose  photo start aletter 'E'")
        font.pixelSize: 20

    }
    Rectangle
            {
              id: rectangle
              x:60; y: 100;
              width: 100
              height: 100
              border.color: "white"
              border.width: 5
              Image {
                  id: pic1
                  x:5
                  y:5
                  width: 90
                  height: 90
                  source: "../../assets/img/png-clipart-white-dog-dog-puppy-cartoon-dogs-white-cat-like-mammal-thumbnail.png"

                    }
              ColorAnimation
              {
                id: animation1
                target: rectangle.border
                property: "color"
                to: "red"
                duration: 1000
              }
              Audio
              {
                  id: playMusic2
                  source: "../../assets/sound/false.mp3"
                    }
              MouseArea
              {
                  id: pic
                  anchors.fill: parent
                  onPressed:
                  {
                      animation1.start()
                      playMusic2.play()

                  }

             }
        }



    Rectangle
            {
              id: rectangle1
              x:280; y: 100;
              width: 100
              height: 100
              border.color: "white"
              border.width: 5
              Image {
                  id: pic2
                  x:5; y: 5;
                  width: 90
                  height: 90
                  source: "../../assets/img/png-clipart-chi-s-sweet-home-cat-hello-kitty-manga-anime-cat-thumbnail.png"

                    }

              ColorAnimation
              {
                id: animation2
                target: rectangle1.border       // The animated item id
                property: "color"         // The animated property
                to: "red"             // Beautiful blue color
                duration: 1000            // Duration of the animation
              }

              Audio
              {
                  id: playMusic3
                  source: "../../assets/sound/false.mp3"
                    }

              MouseArea
              {
                  id: pic3
                  anchors.fill: parent
                  onPressed:
                  {
                      animation2.start();
                      playMusic3.play();

                  }

             }



        }


    Rectangle
            {
              id: rectangle2
              x:170; y: 100;
              width: 100
              height: 100
                border.width: 5
                border.color: "white"
              Image {
                  id: pic4
                  x:5; y: 5;
                  width: 90
                  height: 90
                  source: "../../assets/img/e.jpg"

                    }

              ColorAnimation
              {
                id: animation3
                target: rectangle2.border
                property: "color"
                to: "green"
                duration: 1000
              }

              Audio
              {
                  id: playMusic4
                  source: "../../assets/sound/true - Copy.mp3"
                    }

              MouseArea
              {
                  id: pic5
                  anchors.fill: parent
                  onPressed:
                  {
                      animation3.start();
                      playMusic4.play();

                  }

             }



        }


}
