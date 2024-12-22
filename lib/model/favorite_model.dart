import 'package:final_project/model/home_cook.dart';

import 'package:final_project/view/home.dart';


class Favorite {
  final String id;
  final HomeCook homecook;
  final  recipe;
  Favorite({
    required this.id,
    required this.homecook,
    required this.recipe,
  });
}
