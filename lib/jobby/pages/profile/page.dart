// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_figma_template/jobby/data/profile_card.dart';
import 'package:flutter_figma_template/jobby/models/profile_card.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: SizedBox(
              height: 14,
              width: 27,
              child: SvgPicture.asset(
                'assets/jobby/burger.svg',
                fit: BoxFit.scaleDown,
                color: Colors.black45,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/jobby/search.svg',
              fit: BoxFit.scaleDown,
              color: Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/jobby/house.svg',
              fit: BoxFit.scaleDown,
              color: Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/jobby/message.svg',
              fit: BoxFit.scaleDown,
              color: Colors.black45,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/jobby/account.svg',
              fit: BoxFit.scaleDown,
              color: Colors.black45,
            ),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Имя не указано",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff020105),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "+ 7 999 999 99 99",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff6B4EFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 35),
                // ProfileCard(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,

                    // Generate 100 widgets that display their index in the list.
                    children: List.generate(profileCards.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: ProfileCardWidget(
                          profileCard: profileCards[index],
                        ),
                      );
                    }),
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    //TODO: send otp
                  },

                  style: FilledButton.styleFrom(
                    fixedSize: Size(327, 48),
                    backgroundColor: Color(0xff6B4EFF),
                  ),
                  child: Text(
                    "Выйти",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
