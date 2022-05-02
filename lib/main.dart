import 'package:flutter/material.dart';
import 'package:food_delivery/pages/food/recommended_food_details.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:food_delivery/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MainFoodPage(),
      home: RecommendedFoodDetails(),
    );
  }
}
