import 'package:flutter/material.dart';
import 'package:flutter_figma_template/jobby/models/profile_card.dart';
import 'package:flutter_svg/svg.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key, required this.profileCard});
  final ProfileCard profileCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 134,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xffF6F7FF),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5.0,
          top: 14,
          right: 12,
          // bottom: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/jobby/${profileCard.imageName}.svg',
                fit: BoxFit.scaleDown,
                color: Color(0xff6B4EFF),
              ),
            ),
            SizedBox(height: 38),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 111,
                      child: Text(
                        profileCard.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 13,
                      color: Colors.black12,
                    ),
                  ],
                ),
                SizedBox(
                  width: 111,
                  child: Text(
                    profileCard.description,
                    style: TextStyle(fontSize: 10, color: Colors.black12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
