import 'package:flutter/material.dart';
import 'package:grass_econs/app/services/router_service.dart';
import 'package:one_context/one_context.dart';

import 'locator/locator.dart';

class GrassEcons extends StatelessWidget {
  const GrassEcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RouterService routerService = locator<RouterService>();
    return MaterialApp.router(
      builder: OneContext().builder,
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      title: 'Grass Econs',
      routeInformationParser: routerService.router.defaultRouteParser(),
      routerDelegate: routerService.router.delegate(),
    );
  }
}
