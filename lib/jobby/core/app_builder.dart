import 'package:flutter/material.dart';
import 'package:flutter_figma_template/crm_dashboard/providers/navigation_provider.dart';
import 'package:flutter_figma_template/jobby/pages/onboarding/page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobbyAppBuilder extends StatelessWidget {
  const JobbyAppBuilder({super.key});
  static final String title = 'Navigation Drawer';
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Jobby",
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Color(0xff5932EA),
            surface: Color(0x209197B3),
          ),
          textTheme: GoogleFonts.interTextTheme(textTheme),
        ),
        home: HomeApp(),
      ),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnboardingPage());
  }
}
