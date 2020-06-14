import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    width: 1280
    height: 675

    title: qsTr("Home")

    Label {
        text: qsTr("You are on the home page.")
        anchors.verticalCenterOffset: -257
        anchors.horizontalCenterOffset: -178
        anchors.centerIn: parent
    }

    Button {
        id: button
        x: 317
        y: 168
        text: qsTr("Button")
    }

    BusyIndicator {
        id: busyIndicator
        x: 317
        y: 361
        wheelEnabled: false
    }

    Switch {
        id: element
        x: 317
        y: 116
        text: qsTr("Switch")
    }

    CheckBox {
        id: checkBox
        x: 317
        y: 239
        text: qsTr("Check Box")
    }

    ProgressBar {
        id: progressBar
        x: 317
        y: 302
        width: 293
        height: 53
        value: 0.5
    }

    SpinBox {
        id: spinBox
        x: 317
        y: 435
    }

    RadioButton {
        id: radioButton
        x: 317
        y: 508
        text: qsTr("Radio Button")
    }

    Image {
        id: image1
        x: 1134
        y: 25
        width: 100
        height: 100
        antialiasing: true
        source: "asserts/iconfinder_setting.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image
        x: 980
        y: 375
        width: 300
        height: 300
        antialiasing: true
        source: "asserts/pepethefrog/feels_bad_pepe.png"
        fillMode: Image.PreserveAspectFit
    }

    Slider {
        id: slider
        x: 317
        y: 568
        width: 325
        height: 46
        value: 0.5
    }
}
