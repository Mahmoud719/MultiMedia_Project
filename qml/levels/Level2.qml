import QtQuick 2.0
import Felgo 3.0
import  QtMultimedia 5.2

Item {
    id:item1
    Text {
        x:120
        y:30
        id: header1
        text: qsTr("------------ a letter 'F' -----------------")
        font.pixelSize: 20

    }
    Rectangle
            {
              id: rectangle
              x:200; y: 100;
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
                  source: "../../assets/img/flower.png"

                    }
              ColorAnimation
              {
                id: animation1
                target: rectangle.border
                property: "color"
                to: "yellow"
                duration: 1000
              }
              Audio
              {
                  id: playMusic2
                  source: "../../assets/sound/flower.mp3"
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


}
