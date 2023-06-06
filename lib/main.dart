import 'package:fairerweb/ui/init_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'binding/init_binding.dart';
import 'config/app_theme.dart';
import 'language/app_translations.dart';

void main() => runApp(FairerWeb());

class FairerWeb extends StatelessWidget {
  const FairerWeb({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('ko', 'KR'),
      translationsKeys: AppTranslation.translations,
      debugShowCheckedModeBanner: false,
      title: 'app_title'.tr,
      theme: appThemeData,
      initialBinding: InitBinding(),
      home: InitPage(),
    );
  }
}
