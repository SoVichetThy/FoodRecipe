import 'package:final_project/Data/dummy.dart';
import 'package:final_project/model/ingredient_model.dart';
import 'package:final_project/model/recipe_model.dart';
import 'package:final_project/view/tabBar/food_layout/food_layout.dart';
import 'package:flutter/material.dart';

class Curries extends StatelessWidget {
  Curries({super.key});
  List<RecipeModel> recipe = [
    RecipeModel(
      img: 'image/tabar/curries/Gemini_Generated_Image_h6yju6h6yju6h6yj.jpeg',
      id: uuid.v4(),
      name: 'GreenCurries',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
          name: 'Baugetee',
          id: uuid.v4(),
          quan: 200,
          unit: Unit.milliliter,
        ),
        Ingredient(
          name: 'Chicken',
          id: uuid.v4(),
          quan: 300,
          unit: Unit.gram,
        ),
        Ingredient(
            name: 'Green curry paste',
            id: uuid.v4(),
            quan: 2,
            unit: Unit.tablespoon),
        Ingredient(
            name: 'Coconut milk',
            id: uuid.v4(),
            quan: 400,
            unit: Unit.milliliter),
        Ingredient(
          name: 'Eggplant',
          id: uuid.v4(),
          quan: 150,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Thai basil',
          id: uuid.v4(),
          quan: 20,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Fish sauce',
          id: uuid.v4(),
          quan: 1,
          unit: Unit.tablespoon,
        ),
      ],
    ),
    RecipeModel(
      img: 'image/tabar/soup/Gemini_Generated_Image_ec823gec823gec82.jpeg',
      id: uuid.v4(),
      name: 'Butter Chicken',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
            name: 'Chicken thighs', id: uuid.v4(), quan: 500, unit: Unit.gram),
        Ingredient(
          name: 'Butter',
          id: uuid.v4(),
          quan: 50,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Tomato puree',
          id: uuid.v4(),
          quan: 200,
          unit: Unit.milliliter,
        ),
        Ingredient(
          name: 'Heavy cream',
          id: uuid.v4(),
          quan: 100,
          unit: Unit.milliliter,
        ),
        Ingredient(
          name: 'Garam masala',
          id: uuid.v4(),
          quan: 1,
          unit: Unit.teaspoon,
        ),
        Ingredient(
          name: 'Garlic',
          id: uuid.v4(),
          quan: 2,
          unit: Unit.clove,
        ),
        Ingredient(
          name: 'Ginger',
          id: uuid.v4(),
          quan: 20,
          unit: Unit.gram,
        ),
      ],
    ),
    RecipeModel(
      img: 'image/tabar/soup/Gemini_Generated_Image_oeu1j0oeu1j0oeu1.jpeg',
      id: uuid.v4(),
      name: 'Massaman Curry',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
          name: 'Baugetee',
          id: uuid.v4(),
          quan: 200,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Beef',
          id: uuid.v4(),
          quan: 400,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Massaman curry paste',
          id: uuid.v4(),
          quan: 2,
          unit: Unit.tablespoon,
        ),
        Ingredient(
          name: 'Coconut milk',
          id: uuid.v4(),
          quan: 400,
          unit: Unit.milliliter,
        ),
        Ingredient(
          name: 'Potatoes',
          id: uuid.v4(),
          quan: 200,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Onion',
          id: uuid.v4(),
          quan: 100,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Peanuts',
          id: uuid.v4(),
          quan: 50,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Tamarind paste',
          id: uuid.v4(),
          quan: 1,
          unit: Unit.tablespoon,
        ),
      ],
    ),
    RecipeModel(
      img: 'image/tabar/soup/Gemini_Generated_Image_xvmi57xvmi57xvmi.jpeg',
      id: uuid.v4(),
      name: 'Vegetable Korma',
      type: RecipeType.curries,
      feedback: '',
      timer: DateTime.now(),
      ingredients: [
        Ingredient(
          name: 'Cauliflower',
          id: uuid.v4(),
          quan: 200,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Carrots',
          id: uuid.v4(),
          quan: 100,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Green beans',
          id: uuid.v4(),
          quan: 100,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Coconut milk',
          id: uuid.v4(),
          quan: 200,
          unit: Unit.milliliter,
        ),
        Ingredient(
          name: 'Korma paste',
          id: uuid.v4(),
          quan: 2,
          unit: Unit.tablespoon,
        ),
        Ingredient(
          name: 'Yogurt',
          id: uuid.v4(),
          quan: 100,
          unit: Unit.gram,
        ),
        Ingredient(
          name: 'Cashews',
          id: uuid.v4(),
          quan: 50,
          unit: Unit.gram,
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return FoodLayout(foods: recipe);
  }
}
