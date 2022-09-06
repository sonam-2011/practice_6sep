import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_6sep/binders.dart';
import 'package:practice_6sep/routes.dart';


final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'My Learning Course',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        initialRoute: Routes.introductionScreen,
        getPages: Binders.dependencies());
  }
}
