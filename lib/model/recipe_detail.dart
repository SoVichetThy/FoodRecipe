import 'package:final_project/view/home.dart';

class RecipeDetail {
  final String id;
  final Home recipe;
  final double calories;
  final double protien;
  final double fat;
  RecipeDetail({
    required this.id,
    required this.recipe,
    required this.calories,
    required this.fat,
    required this.protien,
  });
}
