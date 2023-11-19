echo "INICIALIZANDO PROYECTO RESTAURANTO MOBILE EXAMPLE"
echo "levantando terminales"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then # comando para LINUX
  konsole & sleep 1
   qdbus org.kde.konsole-$! /konsole/MainWindow_1 org.kde.KMainWindow.activateAction split-view-left-right
   qdbus org.kde.konsole-$! /Windows/1 org.kde.konsole.Window.setCurrentSession 1
   qdbus org.kde.konsole-$! /Sessions/1 setTitle 1 'Levantando emulador androd'
   qdbus org.kde.konsole-$! /Sessions/1 runCommand 'cd ~/Android/Sdk/emulator'
   qdbus org.kde.konsole-$! /Sessions/1 runCommand './emulator -list-avds'
   qdbus org.kde.konsole-$! /Sessions/1 runCommand './emulator -avd Pixel_7_Pro_API_26'

   #qdbus org.kde.konsole-$! /Sessions/2 setTitle 1 'Ejecutando aplicacion mobile'
   #qdbus org.kde.konsole-$! /Sessions/2 runCommand 'cd ./restaurant_client && flutter run'

   qdbus org.kde.konsole-$! /Windows/1 org.kde.konsole.Window.setCurrentSession 1
   qdbus org.kde.konsole-$! /Sessions/0 setTitle 1 'RESTAURANTE APP'
 #else # comando para WINDOWS
 fi
