import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/images.dart';
import 'package:flutter_pokedex/routers/route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    scheduleMicrotask(() async {
      await Future.delayed(const Duration(milliseconds: 1000));
      await Get.toNamed(Pages.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: Images.pikloader,
              width: 50.h,
              height: 50.w,
              fit: BoxFit.contain,
            ),
            Text(
              'Pokedex',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
