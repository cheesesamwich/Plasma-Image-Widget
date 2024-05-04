import QtQuick 2.15
import org.kde.plasma.core 2.0
import org.kde.plasma.plasmoid 2.0

PlasmoidItem {
    id: root
    width: plasmoid.width
    height: plasmoid.height

    property string rawConfigPath: plasmoid.configuration.imagePath
    property string imagePath: (rawConfigPath.startsWith("http://") || rawConfigPath.startsWith("https://")) ? rawConfigPath : "file://" + rawConfigPath 
    property bool imageVisible: true

    Image {
        source: imagePath
        anchors.fill: parent
        visible: imageVisible
        fillMode: Image.PreserveAspectFit
    }
}
