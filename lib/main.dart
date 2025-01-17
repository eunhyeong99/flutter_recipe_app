import 'package:flutter/material.dart';
import 'package:recipe_app/core/presentation/components/buttons/big_button.dart';
import 'package:recipe_app/core/presentation/components/buttons/filter_button.dart';
import 'package:recipe_app/core/presentation/components/buttons/medium_button.dart';
import 'package:recipe_app/core/presentation/components/buttons/rating_button.dart';
import 'package:recipe_app/core/presentation/components/buttons/small_button.dart';
import 'package:recipe_app/core/presentation/components/dialogs/rating_dialog.dart';
import 'package:recipe_app/core/presentation/components/input_field/input_field.dart';
import 'package:recipe_app/core/presentation/components/tabs/two_tab.dart';
import 'package:recipe_app/core/routing/router.dart';
import 'package:recipe_app/data/repository/mock_bookmark_repository_impl.dart';
import 'package:recipe_app/data/repository/mock_recipe_repository_impl.dart';
import 'package:recipe_app/domain/model/recipe.dart';
import 'package:recipe_app/domain/repository/bookmark_repository.dart';
import 'package:recipe_app/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:recipe_app/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:recipe_app/presentation/sign_in/sign_in_screen.dart';
import 'package:recipe_app/ui/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Components',
          style: TextStyles.largeTextBold,
        ),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  return RatingDialog(
                    title: 'Rate recipe',
                    score: 3,
                    onChange: (int score) {
                      print(score);
                    },
                    actionName: 'send',
                  );
                },
              );
            },
            child: const Text('RatingDialog'),
          ),
          TwoTab(
            labels: [
              'label1',
              'label2',
            ],
            selectedIndex: 0,
            onChange: (int index) {
              print('TwoTab : $index');
            },
          ),
          RatingButton('text'),
          RatingButton('text', isSelected: true),
          FilterButton('text'),
          FilterButton('text', isSelected: true),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BigButton(
              "Big Button",
              onPressed: () {
                print('big button');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MediumButton(
              "Medium",
              onPressed: () {
                print('Medium button');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmallButton(
              "Small",
              onPressed: () {
                print('Small button');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InputField(
              label: 'Label',
              placeHolder: 'placeHolder',
            ),
          ),
        ],
      ),
    );
  }
}
