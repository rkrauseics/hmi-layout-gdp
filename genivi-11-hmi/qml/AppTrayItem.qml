import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: appTrayItemInterface

    readonly property int borderWidth: width * 0.0075

    Rectangle {
        id: fullOpacityBorder
        width: parent.width * 0.95
        height: parent.height * 0.95
        anchors.centerIn: parent
        color: "transparent"
        border.width: borderWidth
        border.color: colors.primaryOrange

        Rectangle {
            id: trayItemTile
            width: parent.width
            height: parent.height
            anchors.centerIn: parent
            opacity: 0.5
            color: colors.primaryOrange
        }
    }
    Item {
        id: contentContainer
        anchors.fill: fullOpacityBorder

        /* Need proper icons from HMI AppTray designs */
        Image {
            id: trayItemImage
            anchors.centerIn: parent
            anchors.verticalCenterOffset: parent.height * -0.05
            sourceSize.width: parent.width * 0.4
            sourceSize.height: parent.height * 0.4
            fillMode: Image.PreserveAspectFit
            source: model.appIcon
            smooth: true
        }

        Text {
            id: trayItemName
            width: parent.width
            height: parent.height * 0.125
            anchors.top: trayItemImage.bottom
            anchors.topMargin: parent.height * 0.05
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.085
            anchors.left: parent.left
            anchors.leftMargin: parent.width * 0.05
            anchors.right: parent.right
            anchors.rightMargin: parent.width * 0.05
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: parent.height * 0.12
            font.family: "Helvetica"
            wrapMode: Text.Wrap
            color: "white"
            text: model.appName
        }
    }
}

