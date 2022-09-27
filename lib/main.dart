//Inspiracao AmirBayat0 Youtube

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '../ligacoes.dart';
import '../utils/temas.dart';
import 'view/visualizacao_final.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cronômetro',
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme,
      home: const FinalView(),
    );
  }
}







































