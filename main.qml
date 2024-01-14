import QtQuick 2.15
import QtQuick.Window 2.15
import "common"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        spacing: 5
        Repeater {
            id: repeater
            model: ["Enterprise", "Columbia", "Challenger", "Discovery", "Endeavour", "Atlantis"]
            delegate: BlueBox {
                width: 100
                height: 32
                radius: 3
                modelData: model.modelData
                index: index // Set the index property of BlueBox
            }
        }
    }

    Component.onCompleted: {
        for (var i = 0; i < repeater.count; i++) {
            repeater.itemAt(i).index = i;
        }
    }
}
