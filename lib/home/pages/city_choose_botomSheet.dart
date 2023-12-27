import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/auth/pages/register_screen.dart';

import 'package:flutter_application_3/home/widgets/city_nams.dart';
import 'package:flutter_application_3/routes/routing_const.dart';

void bottomSheet(BuildContext context) {
  showModalBottomSheet(
    
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close)),
                  const Text('Ваш город',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: const Text('готово',
                        style: TextStyle(color: Colors.green)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: CupertinoTextField(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    placeholder: 'Поиск по городам',
                    padding: const EdgeInsets.symmetric(vertical: 17),
                    onTap: () {},
                  )),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: Names().cityName.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(Names().cityName[index]),
                      );
                    }),
              )
            ],
          ),
        ),
      );
    },
  );
}
