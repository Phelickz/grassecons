// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grass_econs/app/responsiveness/res.dart';
import 'package:grass_econs/app/utils/theme.dart';
import 'package:grass_econs/ui/widgets/skeleton.dart';

import '../../../app/locator/locator.dart';
import '../../../app/routers/router.gr.dart';
import '../../../app/services/router_service.dart';

class StartUpView extends StatefulWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  State<StartUpView> createState() => _StartUpViewState();
}

class _StartUpViewState extends State<StartUpView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final RouterService routerService = locator<RouterService>();
      Timer(const Duration(seconds: 3), () {
        routerService.router.push(const HomeViewRoute());
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Skeleton(
      isBusy: false,
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Grass',
            style: CustomThemeData.generateStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontSize: McGyver.textSize(context, 2.6),
            ),
            children: [
              TextSpan(
                text: " Econs",
                style: CustomThemeData.generateStyle(
                  color: Colors.black,
                  fontSize: McGyver.textSize(context, 2.6),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
