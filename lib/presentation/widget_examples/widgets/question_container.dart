import 'package:flutter/material.dart';
import 'package:learn_flutter_1/presentation/widget_examples/widgets/question_header.dart';

class QuestionContainer extends StatelessWidget {
  final Question question;

  const QuestionContainer({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: question.questionCategorie.color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              QuestionHeader(question: question),
              const SizedBox(
                height: 10,
              ),
              Text(question.questionText),
            ],
          ),
        ),
      ),
    );
  }
}

enum QuestionCategorie {
  sports(color: Colors.grey, categorieName: "sports"),
  science(color: Colors.lightBlue, categorieName: "science"),
  celebreties(color: Colors.pink, categorieName: "celebreties");

  const QuestionCategorie({
    required this.color,
    required this.categorieName,
  });

  final Color color;
  final String categorieName;
}

class Question {
  final String questionText;
  final QuestionCategorie questionCategorie;
  Question({required this.questionCategorie, required this.questionText});
}
