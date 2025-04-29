import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_figma_template/crm_dashboard/pages/pages.dart';
import 'package:flutter_figma_template/jobby/core/app_builder.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(JobbyAppBuilder());
  // runApp(Dashboard());
}
