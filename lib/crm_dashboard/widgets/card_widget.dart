import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TotalCustomersCardWidget extends StatelessWidget {
  const TotalCustomersCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      iconName: 'assets/icons/profile_2user.svg',
      title: "Total Customers",
      text: "5,423",
      footWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_upward, color: Color(0xff00ac4f), size: 20),
          Text(
            "16%",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Color(0xff00ac4f),
            ),
          ),
          Text(
            " this month",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff292D32),
            ),
          ),
        ],
      ),
    );
  }
}

class MembersCardWidget extends StatelessWidget {
  const MembersCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      iconName: 'assets/icons/profile_tick.svg',
      title: "Members",
      text: "1,893",
      footWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_downward, color: Color(0xffD0004B), size: 20),
          Text(
            "1%",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Color(0xffD0004B),
            ),
          ),
          Text(
            " this month",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff292D32),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveNowCardWidget extends StatelessWidget {
  const ActiveNowCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      iconName: 'assets/icons/monitor.svg',
      title: "Active Now",
      text: "189",
      footWidget: SizedBox(
        height: 26,
        width: 100,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: Image.asset(
                'assets/icons/ellipse_58.png',
                height: 26,
                fit: BoxFit.scaleDown,
              ),
            ),
            Positioned(
              left: 13,
              child: Image.asset(
                'assets/icons/ellipse_59.png',
                height: 26,
                fit: BoxFit.scaleDown,
              ),
            ),
            Positioned(
              left: 26,
              child: Image.asset(
                'assets/icons/ellipse_60.png',
                height: 26,
                fit: BoxFit.scaleDown,
              ),
            ),
            Positioned(
              left: 39,
              child: Image.asset(
                'assets/icons/ellipse_61.png',
                height: 26,
                fit: BoxFit.scaleDown,
              ),
            ),
            Positioned(
              left: 52,
              child: Image.asset(
                'assets/icons/ellipse_62.png',
                height: 26,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.iconName,
    required this.title,
    required this.text,
    required this.footWidget,
  });
  final String iconName;
  final String title;
  final String text;
  final Widget footWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 84,
          width: 84,
          decoration: BoxDecoration(
            color: Color(0xffD3FFE7),
            borderRadius: BorderRadius.circular(42),
          ),
          child: Center(
            child: SizedBox(
              width: 42,
              height: 42,
              child: SvgPicture.asset(iconName, fit: BoxFit.scaleDown),
            ),
          ),
        ),
        SizedBox(width: 20),
        SizedBox(
          height: 97,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffACACAC),
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff333333),
                ),
              ),
              footWidget,
            ],
          ),
        ),
      ],
    );
  }
}
