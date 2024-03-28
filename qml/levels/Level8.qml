import QtQuick 2.0
import Felgo 3.0
import  QtMultimedia 5.2

Item {
    id:item1
    Text {
        x:120
        y:30
        id: header1
        text: qsTr("------------ a letter 'N' -----------------")
        font.pixelSize: 20

    }





    Rectangle
            {
              id: rectangle2
              x:200; y: 100;
              width: 100
              height: 100
                border.width: 5
                border.color: "white"
              Image {
                  id: pic4
                  x:5; y: 5;
                  width: 90
                  height: 90
                  source: "../../assets/img/nose.jfif"

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
                  source: "../../assets/sound/nose.mp3"
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
                onClicked: backButtonpressed()
             }



        }


}
