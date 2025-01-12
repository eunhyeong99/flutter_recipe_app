import 'package:flutter/material.dart';

import '../../../../ui/text_styles.dart';

class RatingDialog extends StatelessWidget {
  final String title;
  final int score;
  final String actionName;
  final void Function(int score) onChange;

  const RatingDialog({
    super.key,
    required this.title,
    required this.score,
    required this.onChange,
    required this.actionName,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          title,
          style: TextStyles.smallerTextRegular,
        ),
      ),
    );
  }
}
