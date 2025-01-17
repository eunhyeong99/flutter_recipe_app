
import 'recipe_ingredient.dart';

class Recipe {
  final int id;
  final String category;
  final String name;
  final String image;
  final String chef;
  final String time;
  final double rating;
  final List<RecipeIngredient> ingredients;

  Recipe({
    required this.id,
    required this.category,
    required this.name,
    required this.image,
    required this.chef,
    required this.time,
    required this.rating,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'] as int,
      category: json['category'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      chef: json['chef'] as String,
      time: json['time'] as String,
      rating: json['rating'].toDouble(),
      ingredients: List<RecipeIngredient>.from(
              json['ingredients'].map((e) => RecipeIngredient.fromJson(e)))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'name': name,
      'image': image,
      'chef': chef,
      'time': time,
      'rating': rating,
      'ingredients': ingredients.map((x) => x.toJson()).toList(),
    };
  }
}
