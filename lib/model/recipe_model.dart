import 'package:final_project/model/ingredient_model.dart';

class RecipeModel {
  final String id;
  final String name;
  final RecipeType type;
  final String feedback;
  final DateTime timer;
  List<Ingredient> ingredients;
  final String img;
  RecipeModel({
    required this.img,
    required this.id,
    required this.name,
    required this.type,
    required this.feedback,
    required this.timer,
    required this.ingredients,
  });
}

enum RecipeType {
  snacks,
  soup,
  curries,
  stirfried,
  smooties,
}
