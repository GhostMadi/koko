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
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context,Register);
                        },
                        icon: Icon(Icons.arrow_back))
                  ],
                ),
                const SizedBox(height: 60,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text('СМС подтверждение',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                  ],
                ),
                const SizedBox(height: 30,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                      Pinput(
                        length: 4,
                      ),
                    
                  ],
                ),
                const SizedBox(height: 30,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Отправить код ещё раз ',style: TextStyle(color: Colors.blue),)
                  ],
                ),
                 
                const SizedBox(height: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CupertinoButton(
                      onPressed: (){
                      },
                      color: Colors.green,
                      child: const Text('Войти',style: TextStyle(color: Colors.white),), 
                      )
                  ],
                ) ],
                ),
          )),
    );
  }
}
