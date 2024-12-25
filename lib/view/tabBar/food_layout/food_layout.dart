import 'package:final_project/model/recipe_model.dart';
import 'package:final_project/view/single_food_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodLayout extends StatelessWidget {
  const FoodLayout({
    super.key,
    required this.foods,
  });
  final List<RecipeModel> foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          semanticChildCount: 2,
          padding:
              const EdgeInsets.only(left: 25, top: 20, right: 25, bottom: 25),
          children: [
            ...List.generate(
              foods.length,
              (index) => FoodInTabBar(
                recipeModel: foods[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FoodInTabBar extends StatelessWidget {
  final RecipeModel recipeModel;
  const FoodInTabBar({super.key, required this.recipeModel});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Image.asset(recipeModel.img),
            Positioned(
              bottom: 0,
              child: Container(
                height: 50,
                width: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 0, 0, 0),
                      Color(0xff000000),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 8,
              child: Text(
                recipeModel.name,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Positioned(
              right: -8,
              bottom: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SingleFoodLayout(
                        recipe: recipeModel,
                      ),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.add_circle,
                ),
                color: const Color(0xffEA580C),
                iconSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
