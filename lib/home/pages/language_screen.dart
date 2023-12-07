import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/home/pages/city_choose_botomSheet.dart';
import 'package:flutter_application_3/home/widgets/radio.dart';

class LanguageChoose extends StatefulWidget {
  const LanguageChoose({super.key});

  @override
  State<LanguageChoose> createState() => _LanguageChooseState();
}

class _LanguageChooseState extends State<LanguageChoose> {
  @override
  Widget build(BuildContext context) {
    int item = 1;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              //picture
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/BORD.jpg'),
                    height: 94,
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              //radio
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomeRadio(
                          value: 1,
                          groupValue: item,
                          onChanged: (int? value) {
                            setState(() {
                              item = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Русский язык',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CustomeRadio(
                          value: 2,
                          groupValue: item,
                          onChanged: (int? value) {
                            setState(() {
                              item = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Қазақ тілі',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CustomeRadio(
                          value: 3,
                          groupValue: item,
                          onChanged: (int? value) {
                            setState(() {
                              item = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'English',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //buttons
              const SizedBox(
                height: 177,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(vertical: 19),
                    color: Colors.green,
                    onPressed: () {
                      bottomSheet(context);
                    },
                    child: const Text(
                      'Регистрация',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 26),
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(vertical: 19),
                    color: Colors.green,
                    onPressed: () {
                      
                    },
                    child: const Text(
                      'Войти как гость',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'У меня уже есть аккаунт',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: ' Войти', style: TextStyle(color: Colors.green)),
                  ]))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
