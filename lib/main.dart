// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:portfolio_website/firebase_options.dart';
import 'package:portfolio_website/src/core/main_dashboard_binding.dart';
import 'package:portfolio_website/src/features/dashboard/view/main_dashboard.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final PageStorageBucket bucket = PageStorageBucket();
    return GetMaterialApp(
      initialBinding: MainDashboardBinding(),
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageStorage(
        bucket: bucket,
        child: const MainDashBoard(),
      ),
    );
  }
}
