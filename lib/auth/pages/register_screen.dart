import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/auth/widgets/radio.dart';
import 'package:flutter_application_3/auth/widgets/text_field.dart';
import 'package:flutter_application_3/routes/routing_const.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int digit = 1;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            //icon close
            const Row(
              children: [
                Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 25,
                ),
              ],
            ),
            const SizedBox(
              height: 27,
            ),
            //register
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Регистрация',
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
            //textFields
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                FieldCustome(btnName: ('8(777)77-77-77')),
                const SizedBox(
                  height: 10,
                ),
                FieldCustome(btnName: ('имя')),
                const SizedBox(
                  height: 10,
                ),
                FieldCustome(btnName: ('фамилия')),
                const SizedBox(
                  height: 10,
                ),
                FieldCustome(btnName: ('почта')),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            //radioLists
            Row(
              children: [
                const Text('Пол'),
                const SizedBox(
                  width: 10,
                ),
                RadioCustome(
                  value: 1,
                  groupValue: digit,
                  onChanged: (int? value) {
                    digit = value!;
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Мужской'),
                const SizedBox(
                  width: 10,
                ),
                RadioCustome(
                  value: 2,
                  groupValue: digit,
                  onChanged: (int? value) {
                    digit = value!;
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Женский'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(children: [
              FieldCustome(btnName: 'Код друга (не обязательно)')
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'Я ознакомлен с',
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: ' Пользовательским соглашением',
                      style: TextStyle(color: Colors.blue)),
                ])),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CupertinoButton(
                  onPressed: isChecked == true
                      ? () {
                          Navigator.pushNamed(context, smsPage);
                        }
                      : null,
                  color: isChecked == true ? Colors.green : Colors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: const Text('Далее'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'У меня уже есть аккаунт',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: ' Войти', style: TextStyle(color: Colors.green)),
                  ])),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
