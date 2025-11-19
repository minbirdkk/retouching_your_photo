import 'package:camera/camera.dart';
import 'package:camera_widget/pages/main_screen.dart';
import 'package:flutter/material.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retouching Your Photo',
      debugShowCheckedModeBanner: false,
      home: MainScreen(cameras: cameras),
    );
  }
}
