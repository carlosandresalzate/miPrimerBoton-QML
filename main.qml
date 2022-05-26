import QtQuick 2.15
import QtQuick.Controls 2.1

ApplicationWindow {
    // agrego un id para hacer referencia a este objeto/ventana
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Mi Primer Boton!")

    // de esta manera creo un boton y le agrego una propiedad para cerrar la ventana.

    Button {
        id: exitButton
        text: 'Cerrar'

        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }

        onClicked: {
            Qt.quit();
        }
    }

    // si quisiera crear una botonera horizontal prodria usar el objeto Row,para una vertical cambio row por Column

    Row {
        id: rowButton

        // con la propiedad spacing: <number>  separo los botones
        spacing: 2

        //con la propiedad anchors que recibe una pocicion puedo dercirle en donde colocar los botones
        //anchors.centerIn: parent


        Button {
            id: rbutton1
            text: 'Boton 1'
            onClicked: {
                // aqui uso la referencia id para crear un evento onclick al usar el boton
                mainWindow.title = 'Hice Click en el Boton 1'
            }
        }

        Button {
            id: rbutton2
            text:  'Boton 2'
            onClicked: {
                mainWindow.title = 'Hice Click en el Boton 2'
            }
        }

        Button {
            id: rbutton3
            text:  'Boton 3'
            onClicked: {
                mainWindow.title = 'Hice Click en el Boton 3'
            }
        }

        Button {
            id: rexitButton2
            text: 'Cerrar'
            onClicked: {
                Qt.quit();
            }
        }
    }

    // esta columna deberia posicionarla en la derecha de la ventana. Aun no se como

    Column {
        id: columnButton

        // con la propiedad spacing: <number>  separo los botones
        spacing: 2

        //con la propiedad anchors que recibe una pocicion puedo dercirle en donde colocar los botones
        // Nota: no entiendo aun la propiedad anchors asi que la dejo comentada.
//        anchors.right: parent


        Button {
            id: cbutton1
            text: 'Boton 1'
            onClicked: {
                mainWindow.title = 'Hice Click en el Boton 1'
            }
        }

        Button {
            id: cbutton2
            text:  'Boton 2'
            onClicked: {
                mainWindow.title = 'Hice Click en el Boton 2'
            }
        }

        Button {
            id: cbutton3
            text:  'Boton 3'
            onClicked: {
                mainWindow.title = 'Hice Click en el Boton 3'
            }
        }

        Button {
            id: cexitButton2
            text: 'Cerrar'
            onClicked: {
                Qt.quit();
            }
        }
    }
}
