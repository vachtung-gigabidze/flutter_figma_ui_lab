import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginByPhonePage extends StatefulWidget {
  const LoginByPhonePage({super.key});

  @override
  State<LoginByPhonePage> createState() => _LoginByPhonePageState();
}

class _LoginByPhonePageState extends State<LoginByPhonePage> {
  late TextEditingController phoneController;

  @override
  void initState() {
    phoneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Введите номер телефона",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff020105),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: 364,
                  child: Text(
                    "Чтобы войти и начать подрабатывать в Нашем приложении",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff353535),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 11),
                Row(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffD1D1D1)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "+7",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff777777),
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    SizedBox(
                      width: 285,
                      height: 35,
                      child: TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          hintText: "Номер телефона",
                          hintStyle: TextStyle(
                            fontSize: 15,
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
                SizedBox(height: 23),
                FilledButton(
                  onPressed: () {},

                  style: FilledButton.styleFrom(
                    fixedSize: Size(327, 48),
                    backgroundColor: Color(0xff6B4EFF),
                  ),
                  child: Text(
                    "Продолжить",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Продолжая вы подтверждаете, что ознакомлены и согласны с условиями использования сервиса",
                ),
                SizedBox(height: 23),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (b) {},
                      checkColor: Colors.white,

                      side: BorderSide(color: Color(0xff6B4EFF), width: 1.5),
                    ),
                    SizedBox(
                      width: 250,

                      child: Text.rich(
                        TextSpan(
                          text: 'Согласие на общие ',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w100,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'условия использования сервиса',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff6B4EFF),
                                decorationColor: Color(0xff6B4EFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 23),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (b) {},
                      checkColor: Colors.white,

                      side: BorderSide(color: Color(0xff6B4EFF), width: 1.5),
                    ),
                    SizedBox(
                      width: 250,

                      child: Text.rich(
                        TextSpan(
                          text: 'Согласие с ',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w100,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'политикой конфиденциальности',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff6B4EFF),
                                decorationColor: Color(0xff6B4EFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
