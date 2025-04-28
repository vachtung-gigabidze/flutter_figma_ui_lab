import 'package:flutter/material.dart';
import 'package:flutter_figma_template/jobby/core/app_builder.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/jobby/onboarding.png', fit: BoxFit.cover),
        Positioned.fill(child: ColoredBox(color: Colors.black45)),
        Positioned(
          top: (MediaQuery.of(context).size.height / 2) - 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "JOBBY",
                style: TextStyle(color: Colors.white, fontSize: 98),
              ),
              SizedBox(
                width: 257,
                child: Text(
                  "Лучшее проложение для поиска работы",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 79,

          child: SizedBox(
            height: 48,
            width: 327,
            child: FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(backgroundColor: Colors.white),
              child: Text(
                "Начать",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
