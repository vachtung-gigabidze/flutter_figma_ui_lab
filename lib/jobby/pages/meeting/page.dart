import 'package:flutter/material.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({super.key});

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  late TextEditingController _nameControllers;
  late TextEditingController _cityControllers;

  @override
  void initState() {
    _nameControllers = TextEditingController();
    _cityControllers = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameControllers.dispose();
    _cityControllers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Давайте знакомиться",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff020105),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "Как вас зовут?",
                  style: TextStyle(
                    fontSize: 14,
                    // color: Color(0xff6B4EFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 330,
                  height: 50,
                  child: TextField(
                    controller: _nameControllers,
                    decoration: InputDecoration(
                      hintText: "Имя",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff777777),
                        fontWeight: FontWeight.w100,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff777777),
                          width: 0.5,
                          style: BorderStyle.solid,
                        ),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Город",
                  style: TextStyle(
                    fontSize: 14,
                    // color: Color(0xff6B4EFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 330,
                  height: 50,
                  child: TextField(
                    controller: _nameControllers,

                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.location_on),
                      hintText: "Начните вводить адрес",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff777777),
                        fontWeight: FontWeight.w100,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff777777),
                          width: 0.5,
                          style: BorderStyle.solid,
                        ),
                      ),
                      border: const OutlineInputBorder(),
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
