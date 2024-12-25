import 'package:final_project/Data/dummy.dart';
import 'package:final_project/model/ingredient_model.dart';
import 'package:final_project/model/recipe_model.dart';
import 'package:final_project/view/tabBar/food_layout/food_layout.dart';
import 'package:flutter/material.dart';

class Stirfried extends StatelessWidget {
  Stirfried({super.key});
  
  List<RecipeModel> recipe = [
    RecipeModel(
      img: 'image/tabar/stirfried/Gemini_Generated_Image_3dl8i73dl8i73dl8.jpeg',
      id: uuid.v4(),
      name: 'Pad Thai',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
            name: 'Rice noodles', id: uuid.v4(), quan: 200, unit: Unit.gram),
        Ingredient(name: 'Shrimp', id: uuid.v4(), quan: 150, unit: Unit.gram),
        Ingredient(name: 'Eggs', id: uuid.v4(), quan: 2, unit: Unit.piece),
        Ingredient(name: 'Tofu', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(name: 'Peanuts', id: uuid.v4(), quan: 30, unit: Unit.gram),
        Ingredient(
            name: 'Bean sprouts', id: uuid.v4(), quan: 50, unit: Unit.gram),
        Ingredient(
            name: 'Green onions', id: uuid.v4(), quan: 30, unit: Unit.gram),
        Ingredient(name: 'Lime', id: uuid.v4(), quan: 1, unit: Unit.piece),
        Ingredient(
            name: 'Fish sauce', id: uuid.v4(), quan: 2, unit: Unit.tablespoon),
        Ingredient(
            name: 'Tamarind paste',
            id: uuid.v4(),
            quan: 1,
            unit: Unit.tablespoon),
        Ingredient(
            name: 'Brown sugar', id: uuid.v4(), quan: 1, unit: Unit.tablespoon),
        Ingredient(
            name: 'Peanut oil', id: uuid.v4(), quan: 2, unit: Unit.tablespoon),
      ],
    ),
    RecipeModel(
      img: 'image/tabar/soup/Gemini_Generated_Image_ec823gec823gec82.jpeg',
      id: uuid.v4(),
      name: 'Beef and Broccoli',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
            name: 'Beef (sliced thin)',
            id: uuid.v4(),
            quan: 200,
            unit: Unit.gram),
        Ingredient(name: 'Broccoli', id: uuid.v4(), quan: 200, unit: Unit.gram),
        Ingredient(name: 'Garlic', id: uuid.v4(), quan: 3, unit: Unit.clove),
        Ingredient(
            name: 'Soy sauce', id: uuid.v4(), quan: 2, unit: Unit.tablespoon),
        Ingredient(
            name: 'Oyster sauce',
            id: uuid.v4(),
            quan: 1,
            unit: Unit.tablespoon),
        Ingredient(
            name: 'Cornstarch', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
        Ingredient(name: 'Ginger', id: uuid.v4(), quan: 1, unit: Unit.teaspoon),
        Ingredient(
            name: 'Sesame oil', id: uuid.v4(), quan: 1, unit: Unit.tablespoon),
        Ingredient(
            name: 'Vegetable oil',
            id: uuid.v4(),
            quan: 2,
            unit: Unit.tablespoon),
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
    return  FoodLayout(
      foods: recipe,
    );
  }
}
