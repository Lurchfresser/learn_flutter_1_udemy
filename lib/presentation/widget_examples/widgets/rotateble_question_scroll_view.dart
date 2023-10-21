import 'package:flutter/material.dart';
import 'package:learn_flutter_1/presentation/widget_examples/widgets/buttons_example.dart';
import 'package:learn_flutter_1/presentation/widget_examples/widgets/question_container.dart';

class RotatebleQuestionScrollView extends StatelessWidget {
  const RotatebleQuestionScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      questions.shuffle();
      var children = [
        for (var question in questions)
          QuestionContainer(
            question: question,
          ),
          const ButtonExample(),
      ];
      final Flex child;
      final Axis scrollDirection;
      if (MediaQuery.of(context).size.width <
          MediaQuery.of(context).size.height) {
        child = Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children);
        scrollDirection = Axis.vertical;
      } else {
        scrollDirection = Axis.horizontal;
        child = Row(
          children: children,
        );
      }
      return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: scrollDirection,
        child: child,
      );
    });
  }
}

List<Question> questions = [
  Question(
      questionCategorie: QuestionCategorie.sports,
      questionText: "Who won the first world cup?"),
  Question(
      questionCategorie: QuestionCategorie.celebreties,
      questionText:
          "What Jonas brothers were Taylor Swift and Selena Gomez dating when they first met and became friends?"),
  Question(
      questionCategorie: QuestionCategorie.celebreties,
      questionText:
          "Who was the first of the Kardashian-Jenner sisters to become a billionaire?"),
  Question(
      questionCategorie: QuestionCategorie.celebreties,
      questionText:
          "What Hollywood actor played Muhammed Ali in the 2001 movie, Ali?"),
  Question(
      questionCategorie: QuestionCategorie.science,
      questionText: "How many bones are in the human body?"),
  Question(
      questionCategorie: QuestionCategorie.science,
      questionText: "What is the hardest natural substance on Earth?"),
  Question(
      questionCategorie: QuestionCategorie.science,
      questionText: "Humans and chimpanzees share roughly how much DNA?"),
  Question(
      questionCategorie: QuestionCategorie.sports,
      questionText:
          "Who is the highest run-scorer of all time in International cricket?"),
  Question(
      questionCategorie: QuestionCategorie.sports,
      questionText:
          "In American Football, how many points do you score for a touchdown?"),
  Question(
      questionCategorie: QuestionCategorie.sports,
      questionText:
          "How old was American professional tennis player Coco Gauff when she beat Venus Williams at Wimbledon in 2019?"),
];
