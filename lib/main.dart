import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final double height = MediaQuery.of(context).size.height;
    final double weight = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: Size(weight, height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return GetMaterialApp(
            initialBinding: MainDashboardBinding(),
            title: 'Flutter Dev Portfolio',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: PageStorage(
              bucket: bucket,
              child: const MainDashBoard(),
            ),
          );
        });
  }
}
