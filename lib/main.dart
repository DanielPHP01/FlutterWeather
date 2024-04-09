import 'package:flutter/material.dart';
import 'package:pet_for_geekstudio/view/home/home_wheather_view.dart';
import 'package:pet_for_geekstudio/view/home/viewmodel/home_wheather_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => HomeWheatherViewModel(),
        child: const HomeWheatherView(),
      ),
    );
  }
}
