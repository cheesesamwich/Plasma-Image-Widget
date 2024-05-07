import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
    id: page

    property alias cfg_imagePath: imagePath.text
    property alias cfg_stretchImage: stretchImage.checked

    QQC2.TextField {
        id: imagePath
        Kirigami.FormData.label: i18n("Image Path: ")
        placeholderText: i18n("URL or File Path here")
    }
    QQC2.CheckBox {
        id: stretchImage
        text: i18n("Stretch image")
    }
}