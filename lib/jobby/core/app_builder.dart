import 'package:flutter/material.dart';
import 'package:flutter_figma_template/jobby/pages/pages.dart';
import 'package:google_fonts/google_fonts.dart';

class JobbyAppBuilder extends StatelessWidget {
  const JobbyAppBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Jobby",
      theme: ThemeData(
        // colorScheme: ColorScheme.light(
        //   primary: Color(0xff5932EA),
        //   surface: Color(0x209197B3),
        // ),
        textTheme: GoogleFonts.interTextTheme(textTheme),
      ),
      home: ProfilePage(),
    );
  }
}

// class HomeApp extends StatefulWidget {
//   const HomeApp({super.key});

//   @override
//   State<HomeApp> createState() => _HomeAppState();
// }

// class _HomeAppState extends State<HomeApp> {
//   @override
//   Widget build(BuildContext context) {
//     return ProfilePage(); //MeetingPage(); //ConfirmPage(); // LoginByPhonePage(); // OnboardingPage());
//   }
// }
