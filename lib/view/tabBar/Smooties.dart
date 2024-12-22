import 'package:final_project/Data/dummy.dart';
import 'package:final_project/model/ingredient_model.dart';
import 'package:final_project/model/recipe_model.dart';
import 'package:final_project/view/tabBar/food_layout/food_layout.dart';
import 'package:flutter/material.dart';

class Smooties extends StatelessWidget {
  Smooties({super.key});
  List<RecipeModel> recipe = [
    RecipeModel(
      img: 'image/tabar/smooties/Gemini_Generated_Image_eq6hvqeq6hvqeq6h.jpeg',
      id: uuid.v4(),
      name: 'ChocoPeanutBut',
      type: RecipeType.smooties,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
          name: 'Banana',
          id: uuid.v4(),
          quan: 1,
          unit: Unit.piece,
        ),
        Ingredient(
          name: 'Peanut butter',
          id: uuid.v4(),
          quan: 2,
          unit: Unit.tablespoon,
        ),
        Ingredient(
          name: 'Cocoa powder',
          id: uuid.v4(),
          quan: 1,
          unit: Unit.tablespoon,
        ),
        Ingredient(
          name: 'Milk',
          id: uuid.v4(),
          quan: 250,
          unit: Unit.milliliter,
        ),
        Ingredient(
          name: 'Honey',
          id: uuid.v4(),
          quan: 1,
          unit: Unit.tablespoon,
        ),
        Ingredient(
          name: 'Ice cubes',
          id: uuid.v4(),
          quan: 5,
          unit: Unit.piece,
        ),
      ],
    ),
    RecipeModel(
      img: 'image/tabar/smooties/Gemini_Generated_Image_iqoa41iqoa41iqoa.jpeg',
      id: uuid.v4(),
      name: 'Green Detox ',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
          name: 'Spinach',
          id: uuid.v4(),
          quan: 50,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Kale',
          id: uuid.v4(),
          quan: 50,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Apple',
          id: uuid.v4(),
          quan: 1,
          unit: Unit.piece,
        ),
        Ingredient(
          name: 'Banana',
          id: uuid.v4(),
          quan: 1,
          unit: Unit.piece,
        ),
        Ingredient(
          name: 'Lemon juice',
          id: uuid.v4(),
          quan: 2,
          unit: Unit.tablespoon,
        ),
        Ingredient(
          name: 'Coconut water',
          id: uuid.v4(),
          quan: 250,
          unit: Unit.milliliter,
        ),
        Ingredient(
          name: 'Ice cubes',
          id: uuid.v4(),
          quan: 5,
          unit: Unit.piece,
        ),
      ],
    ),
    RecipeModel(
      img: 'image/tabar/smooties/Gemini_Generated_Image_ixlg8cixlg8cixlg.jpeg',
      id: uuid.v4(),
      name: 'Mango Pineapple ',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(name: 'Mango', id: uuid.v4(), quan: 1, unit: Unit.piece),
        Ingredient(
            name: 'Pineapple', id: uuid.v4(), quan: 200, unit: Unit.gram),
        Ingredient(
            name: 'Orange juice',
            id: uuid.v4(),
            quan: 250,
            unit: Unit.milliliter),
        Ingredient(
            name: 'Greek yogurt', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(
            name: 'Honey', id: uuid.v4(), quan: 1, unit: Unit.tablespoon),
        Ingredient(name: 'Ice cubes', id: uuid.v4(), quan: 5, unit: Unit.piece),
      ],
    ),
    RecipeModel(
      img: 'image/tabar/smooties/Gemini_Generated_Image_xhd0onxhd0onxhd0.jpeg',
      id: uuid.v4(),
      name: 'Strawberry Banana',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
            name: 'Strawberries', id: uuid.v4(), quan: 200, unit: Unit.gram),
        Ingredient(name: 'Banana', id: uuid.v4(), quan: 1, unit: Unit.piece),
        Ingredient(
            name: 'Milk', id: uuid.v4(), quan: 250, unit: Unit.milliliter),
        Ingredient(
            name: 'Greek yogurt', id: uuid.v4(), quan: 100, unit: Unit.gram),
        Ingredient(
            name: 'Honey', id: uuid.v4(), quan: 1, unit: Unit.tablespoon),
        Ingredient(name: 'Ice cubes', id: uuid.v4(), quan: 5, unit: Unit.piece),
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
