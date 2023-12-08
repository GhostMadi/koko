import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/auth/widgets/radio.dart';
import 'package:flutter_application_3/auth/widgets/text_field.dart';

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
            Row(
              children: [
                Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 25,
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
            //register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Регистрация',
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
            //textFields
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                FieldCustome(btnName: ('8(777)77-77-77')),
                SizedBox(
                  height: 10,
                ),
                FieldCustome(btnName: ('имя')),
                SizedBox(
                  height: 10,
                ),
                FieldCustome(btnName: ('фамилия')),
                SizedBox(
                  height: 10,
                ),
                FieldCustome(btnName: ('почта')),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 33,
            ),
            //radioLists
            Row(
              children: [
                Text('Пол'),
                SizedBox(
                  width: 10,
                ),
                RadioCustome(
                  value: 1,
                  groupValue: digit,
                  onChanged: (int? value) {
                    digit = value!;
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Мужской'),
                SizedBox(
                  width: 10,
                ),
                RadioCustome(
                  value: 2,
                  groupValue: digit,
                  onChanged: (int? value) {
                    digit = value!;
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Женский'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(children: [
              FieldCustome(btnName: 'Код друга (не обязательно)')
            ]),
            SizedBox(
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
                    text: TextSpan(children: [
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
                  onPressed: isChecked==true?(){}:null,
                  color:isChecked==true?Colors.green: Colors.grey,
                  child: Text('Далее'),padding: EdgeInsets.symmetric(vertical: 20),),
                  SizedBox(height: 10,),
                  Center(
                    child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'У меня уже есть аккаунт',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: ' Войти',
                        style: TextStyle(color: Colors.green)),
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
