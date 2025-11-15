import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:retouching_your_photo/pages/home_page.dart';

late final List<CameraDescription> _cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); //플러터 엔진 초기화
  _cameras = await availableCameras();  //여기서 카메라 목록 가져오기
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(cameras: _cameras),
    );
  }
}

