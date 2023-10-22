import 'package:flutter/material.dart';

import 'question_container.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 20,
          ),
          Text(
            question.questionCategorie.categorieName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
                'assets/${question.questionCategorie.categorieName}.png'),
            radius: 20,
          )
        ],
      ),
    );
  }
}
