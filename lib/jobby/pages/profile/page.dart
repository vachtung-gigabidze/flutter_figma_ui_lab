// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_figma_template/jobby/data/profile_card.dart';
import 'package:flutter_figma_template/jobby/widgets/profile_card.dart';

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
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
        // backgroundColor: Colors.black12,
        items: [
          BottomNavigationBarItem(
            label: '',
            backgroundColor: Color(0xffF9F4FF),
            icon: SvgPicture.asset(
              'assets/jobby/burger.svg',
              fit: BoxFit.scaleDown,
              color: Colors.black45,
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
