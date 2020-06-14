import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    width: 1280
    height: 675

    title: qsTr("Page 1")

    Label {
        text: qsTr("You are on Page 1.")
        anchors.centerIn: parent
    }

    Image {
        id: image
        x: 980
        y: 375
        width: 300
        height: 300
        antialiasing: true
        source: "asserts/pepethefrog/smug_pepe.png"
        fillMode: Image.PreserveAspectFit
    }
}
