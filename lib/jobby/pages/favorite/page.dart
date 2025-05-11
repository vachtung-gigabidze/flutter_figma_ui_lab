// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_figma_template/jobby/data/profile_card.dart';
import 'package:flutter_figma_template/jobby/widgets/profile_card.dart';
// import 'package:flutter_figma_template/jobby/models/profile_card.dart';
// import 'package:flutter_figma_template/jobby/pages/profile%20copy/page.dart';
import 'package:flutter_svg/svg.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
            child: GridView.count(
              crossAxisCount: 2,

              // Generate 100 widgets that display their index in the list.
              children: List.generate(favoriteCards.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(2.5),
                  child: ProfileCardWidget(profileCard: favoriteCards[index]),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
