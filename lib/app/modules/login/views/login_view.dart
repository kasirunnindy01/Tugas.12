import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: context.isPhone
            ? EdgeInsets.all(Get.width * 0.1)
            : EdgeInsets.all(Get.height * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Row(children: [
          //biru
          !context.isPhone
              ? Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Welcome',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 70),
                            ),
                            Text(
                              'Please Sign In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Text(
                              'Start Journey Wtih Us',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ]),
                    ),
                  ),
                )
              : const SizedBox(),
          //putih
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              context.isPhone
                  ? Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                          Text(
                            'Welcome',
                            style: TextStyle(color: Colors.grey, fontSize: 40),
                          ),
                          Text(
                            'Please Sign In',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Text(
                            'Start Journey Wtih Us',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ])
                  : const SizedBox(),
              Image.asset(
                'assets/images/login.png',
                height: Get.height * 0.5,
              ),
              FloatingActionButton.extended(
                  onPressed: () => Get.toNamed(Routes.HOME),
                  label: const Text('Sign In With Google'),
                  icon: const Icon(
                    Ionicons.logo_google,
                    color: Colors.white,
                  ))
            ]),
          ))
        ]),
      ),
    );
  }
}
