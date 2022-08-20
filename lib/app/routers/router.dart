import 'package:auto_route/auto_route.dart';
import 'package:grass_econs/ui/views/home/home.dart';
import '../../ui/views/startUp/startUp.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  // replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartUpView, initial: true),
    AdaptiveRoute(page: HomeView)
  ],
)
class $SSRouter {}
