import 'package:flutter/material.dart';
import 'package:recipe_app/domain/model/recipe.dart';

import '../../../../ui/color_styles.dart';
import '../../../../ui/text_styles.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({
    required this.recipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 315 / 150,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(recipe.image), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    recipe.name,
                    style: TextStyles.smallerTextBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'By ${recipe.chef}',
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 17,
                ),
                const SizedBox(width: 5),
                Text(
                  recipe.time,
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                ClipOval(
                  child: Container(
                    padding: EdgeInsets.all(3),
                    color: Colors.white,
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      color: ColorStyles.primary80,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 37,
              height: 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorStyles.secondary20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: ColorStyles.rating,
                    size: 12,
                  ),
                  Text(
                    recipe.rating.toString(),
                    style: TextStyles.smallerTextRegular,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}