import 'package:flutter/material.dart';
import 'package:flutter_figma_template/weather/ff_you_awesome/index.dart';
import 'package:flutter_figma_template/weather/pages/home/page.dart';
import 'package:flutter_figma_template/weather/pages/search/page.dart';

import 'package:google_fonts/google_fonts.dart';

class WeatherAppBuilder extends StatelessWidget {
  const WeatherAppBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather",
      theme: ThemeData(
        // colorScheme: ColorScheme.light(
        //   primary: Color(0xff5932EA),
        //   surface: Color(0x209197B3),
        // ),
        textTheme: GoogleFonts.interTextTheme(textTheme),
      ),
      home: SizedBox(
        width: 400,
        child: SearchPage(), //HomePage(),
      ),
      // YouAwesomePage(
      //   bloc: YouAwesomeBloc(provider: YouAwesomeProvider()),
      // ), //ProfilePage(),
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
