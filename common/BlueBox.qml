import QtQuick 2.15

Rectangle {
    property int index
    property string modelData
    width: 100
    height: 32
    color: "blue"

    Text {
        anchors.centerIn: parent
        text: modelData + ' (' + index + ')' // Display text with index
    }
}
