import 'package:final_project/Data/dummy.dart';
import 'package:final_project/model/ingredient_model.dart';
import 'package:final_project/model/recipe_model.dart';
import 'package:final_project/view/tabBar/food_layout/food_layout.dart';
import 'package:flutter/material.dart';

class Soup extends StatelessWidget {
  Soup({super.key});

  List<RecipeModel> recipe = [
    RecipeModel(
      img: 'image/tabar/snack/unnamed.png',
      id: uuid.v4(),
      name: 'Pumpkin Soup',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(name: 'Pumpkin', id: uuid.v4(), quan: 500, unit: Unit.gram),
        Ingredient(name: 'Onion', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Garlic', id: uuid.v4(), quan: 2, unit: Unit.clove),
        Ingredient(
            name: 'Vegetable stock',
            id: uuid.v4(),
            quan: 500,
            unit: Unit.milliliter),
        Ingredient(
            name: 'Cream', id: uuid.v4(), quan: 100, unit: Unit.milliliter),
        Ingredient(
            name: 'Olive oil', id: uuid.v4(), quan: 1, unit: Unit.tablespoon),
        Ingredient(name: 'Salt', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
        Ingredient(name: 'Pepper', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
      ],
    ),
    RecipeModel(
      img: 'image/tabar/soup/Gemini_Generated_Image_ec823gec823gec82.jpeg',
      id: uuid.v4(),
      name: 'Pumpkin Soup',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
            name: 'Chicken breast', id: uuid.v4(), quan: 300, unit: Unit.gram),
        Ingredient(name: 'Carrots', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Celery', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Onion', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(
            name: 'Chicken stock', id: uuid.v4(), quan: 1, unit: Unit.liter),
        Ingredient(
            name: 'Egg noodles', id: uuid.v4(), quan: 200, unit: Unit.gram),
        Ingredient(name: 'Salt', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
        Ingredient(name: 'Pepper', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
      ],
    ),
    RecipeModel(
      //duplicate
      img: 'image/tabar/snack/unnamed.png',
      id: uuid.v4(),
      name: 'Pumpkin Soup',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(name: 'Pumpkin', id: uuid.v4(), quan: 500, unit: Unit.gram),
        Ingredient(name: 'Onion', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Garlic', id: uuid.v4(), quan: 2, unit: Unit.clove),
        Ingredient(
            name: 'Vegetable stock',
            id: uuid.v4(),
            quan: 500,
            unit: Unit.milliliter),
        Ingredient(
            name: 'Cream', id: uuid.v4(), quan: 100, unit: Unit.milliliter),
        Ingredient(
            name: 'Olive oil', id: uuid.v4(), quan: 1, unit: Unit.tablespoon),
        Ingredient(name: 'Salt', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
        Ingredient(name: 'Pepper', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
      ],
    ),
    RecipeModel(
      //duplicate
      img: 'image/tabar/snack/unnamed.png',
      id: uuid.v4(),
      name: 'Pumpkin Soup',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(name: 'Pumpkin', id: uuid.v4(), quan: 500, unit: Unit.gram),
        Ingredient(name: 'Onion', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Garlic', id: uuid.v4(), quan: 2, unit: Unit.clove),
        Ingredient(
            name: 'Vegetable stock',
            id: uuid.v4(),
            quan: 500,
            unit: Unit.milliliter),
        Ingredient(
            name: 'Cream', id: uuid.v4(), quan: 100, unit: Unit.milliliter),
        Ingredient(
            name: 'Olive oil', id: uuid.v4(), quan: 1, unit: Unit.tablespoon),
        Ingredient(name: 'Salt', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
        Ingredient(name: 'Pepper', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return const FoodLayout(
      foods: [],
    );
  }
}