import 'package:first_fontend_project/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:first_fontend_project/init/inits.dart' as di;

void main()async {
 await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: () =>const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home:HomePage(),
        )
    );
  }
}
