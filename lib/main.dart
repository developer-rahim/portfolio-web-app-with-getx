import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:portfolio_website/src/core/binding/main_dashboard_binding.dart';
import 'package:portfolio_website/src/features/dashboard/view/main_dashboard.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
