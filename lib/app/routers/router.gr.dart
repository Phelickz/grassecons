import 'package:auto_route/auto_route.dart' as i3;
import 'package:flutter/material.dart' as i4;
import 'package:grass_econs/ui/views/home/home.dart' as i2;
import 'package:grass_econs/ui/views/startUp/startUp.dart' as i1;

class SSRouter extends i3.RootStackRouter {
  SSRouter([i4.GlobalKey<i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, i3.PageFactory> pagesMap = {
    StartUpViewRoute.name: (routeData) {
      return i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const i1.StartUpView());
    },
    HomeViewRoute.name: (routeData) {
      return i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const i2.HomeView());
    }
  };

  @override
  List<i3.RouteConfig> get routes => [
        i3.RouteConfig(StartUpViewRoute.name, path: '/'),
        i3.RouteConfig(HomeViewRoute.name, path: '/home-view')
      ];
}

/// generated route for
/// [i1.StartUpView]
class StartUpViewRoute extends i3.PageRouteInfo<void> {
  const StartUpViewRoute() : super(StartUpViewRoute.name, path: '/');

  static const String name = 'StartUpViewRoute';
}

/// generated route for
/// [i2.HomeView]
class HomeViewRoute extends i3.PageRouteInfo<void> {
  const HomeViewRoute() : super(HomeViewRoute.name, path: '/home-view');

  static const String name = 'HomeViewRoute';
}
