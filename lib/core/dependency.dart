import 'package:flutter_learning/core/routes.dart';
import 'package:get_it/get_it.dart';

class Dependency {
  final getIt = GetIt.instance;

  Dependency() {
    getIt.registerSingleton(Routes());
  }
}

final dependency = Dependency().getIt;
