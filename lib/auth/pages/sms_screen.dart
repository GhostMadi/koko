import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/routes/routing_const.dart';
import 'package:pinput/pinput.dart';

class Sms extends StatefulWidget {
  const Sms({super.key});
  @override
  State<Sms> createState() => _SmsState();
}

class _SmsState extends State<Sms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, Register);
          },
          icon:const Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'СМС подтверждение',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Pinput(
                  defaultPinTheme: PinTheme(
                      width: 40,
                      height: 54,
                      decoration: BoxDecoration(
                          color:const Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(5))),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'Отправить код ещё раз ',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 40),
            CupertinoButton(
              onPressed: () {},
              color: Colors.green,
              child: const Text(
                'Войти',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      )),
    );
  }
}
