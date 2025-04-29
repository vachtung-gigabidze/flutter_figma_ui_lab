import 'package:flutter/material.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({super.key});

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  late List<TextEditingController> _otpControllers;
  String _otp = '';
  @override
  void initState() {
    _otpControllers = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];
    super.initState();
  }

  @override
  void dispose() {
    for (var c in _otpControllers) {
      c.dispose();
    }
    super.dispose();
  }

  otpChanged() {
    for (var c in _otpControllers) {
      _otp = _otp + c.text;
    }
    if (_otp.length == 4) {
      //TODO: next page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Подтверждение",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff020105),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 94),
                Text(
                  "Введите код из смс.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff6B4EFF),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                // SizedBox(height: 16),
                Text(
                  "Он был отправлен на номер",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff353535),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 21),
                Text(
                  "+7 999 999 99 99",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff353535),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),

                SizedBox(height: 22),
                SizedBox(
                  width: 180,
                  child: Text(
                    "Запросить код еще раз через 58 секунд",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff353535),
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                SizedBox(height: 41),
                FilledButton(
                  onPressed: () {
                    //TODO: send otp
                  },

                  style: FilledButton.styleFrom(
                    fixedSize: Size(327, 48),
                    backgroundColor: Color(0xff6B4EFF),
                  ),
                  child: Text(
                    "Отправить код еще раз",
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
