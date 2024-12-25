import 'package:final_project/Data/dummy.dart';
import 'package:final_project/model/ingredient_model.dart';
import 'package:final_project/model/recipe_model.dart';
import 'package:final_project/view/tabBar/food_layout/food_layout.dart';
import 'package:flutter/material.dart';

class Snacks extends StatelessWidget {
  Snacks({super.key});
  List<RecipeModel> recipe = [
    RecipeModel(
      img: 'image/tabar/snack/unnamed.png',
      id: uuid.v4(),
      name: 'NumPangPate',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(name: 'Baguette', id: uuid.v4(), quan: 1, unit: Unit.piece),
        Ingredient(
            name: 'Pork pate', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Cucumber', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(
            name: 'Pickled carrots', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(
            name: 'Pickled daikon', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(name: 'Cilantro', id: uuid.v4(), quan: 10, unit: Unit.gram),
        Ingredient(
            name: 'Soy sauce', id: uuid.v4(), quan: 1, unit: Unit.tablespoon),
      ],
    ),
    RecipeModel(
      img: 'image/tabar/snack/unnamed (1).png',
      id: uuid.v4(),
      name: 'Fresh Spring Rolls',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
            name: 'Rice paper', id: uuid.v4(), quan: 10, unit: Unit.piece),
        Ingredient(name: 'Shrimp', id: uuid.v4(), quan: 200, unit: Unit.gram),
        Ingredient(
            name: 'Rice vermicelli', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Lettuce', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(
            name: 'Mint leaves', id: uuid.v4(), quan: 20, unit: Unit.gram),
        Ingredient(name: 'Carrots', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(
            name: 'Peanut dipping sauce',
            id: uuid.v4(),
            quan: 100,
            unit: Unit.milliliter),
      ],
    ),
    RecipeModel(
      //duplicate
      img: 'image/tabar/snack/unnamed (3).png',
      id: uuid.v4(),
      name: 'Num Jek Jean',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
            name: 'Rice paper', id: uuid.v4(), quan: 10, unit: Unit.piece),
        Ingredient(name: 'Shrimp', id: uuid.v4(), quan: 200, unit: Unit.gram),
        Ingredient(
            name: 'Rice vermicelli', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Lettuce', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(
            name: 'Mint leaves', id: uuid.v4(), quan: 20, unit: Unit.gram),
        Ingredient(name: 'Carrots', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(
            name: 'Peanut dipping sauce',
            id: uuid.v4(),
            quan: 100,
            unit: Unit.milliliter),
      ],
    ),
    RecipeModel(
      //Duplicate
      img: 'image/tabar/snack/unnamed (4).png',
      id: uuid.v4(),
      name: 'Num Plae Ai',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
            name: 'Rice paper', id: uuid.v4(), quan: 10, unit: Unit.piece),
        Ingredient(name: 'Shrimp', id: uuid.v4(), quan: 200, unit: Unit.gram),
        Ingredient(
            name: 'Rice vermicelli', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Lettuce', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(
            name: 'Mint leaves', id: uuid.v4(), quan: 20, unit: Unit.gram),
        Ingredient(name: 'Carrots', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(
            name: 'Peanut dipping sauce',
            id: uuid.v4(),
            quan: 100,
            unit: Unit.milliliter),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return FoodLayout(
      foods: recipe,
    );
  }
}
