import 'package:grass_econs/app/routers/router.dart';
import "package:injectable/injectable.dart";

@lazySingleton
class RouterService {
  final SSRouter router = SSRouter();
}
