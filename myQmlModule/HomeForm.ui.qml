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

        Connections {
            target: intensitySlider
            onMoved: {
                progressBar.value = intensitySlider.value
            }
        }
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
        id: intensitySlider
        x: 317
        y: 568
        width: 325
        height: 46
        value: 0.5

        Connections {
            target: intensitySlider
            onMoved: {
                print("intensitySlider value changed", intensitySlider.value)
            }
        }
    }

    Button {
        id: redButton
        x: 317
        y: 168
        text: qsTr("Red")

        Connections {
            target: redButton
            onClicked: {
                print("redButton clicked")
            }
        }
    }

    Button {
        id: greenButton
        x: 464
        y: 168
        text: qsTr("Green")

        Connections {
            target: greenButton
            onClicked: {
                print("greenButton clicked")
            }
        }
    }

    Button {
        id: blueButton
        x: 618
        y: 168
        text: qsTr("Blue")

        Connections {
            target: blueButton
            onClicked: {
                print("blueButton clicked")
            }
        }
    }

    Button {
        id: settingButton
        x: 777
        y: 168
        text: qsTr("")
        width: 100
        height: 100

        BorderImage {
            id: name
            source: "asserts/iconfinder_setting.png"
            width: 100
            height: 100
            border.left: 0
            border.top: 0
            border.right: 0
            border.bottom: 0
        }

        Connections {
            target: settingButton
            onClicked: {
                print("settingButton clicked")
            }
        }
    }
}
