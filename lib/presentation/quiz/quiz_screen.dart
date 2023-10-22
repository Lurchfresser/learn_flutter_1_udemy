import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter_1/presentation/components/floating_add_and_remove.dart';
import 'package:learn_flutter_1/presentation/quiz/widgets/question_container.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> displayedQuestions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingAddAndRemove(add: () {
        setState(() {
          if (questions.isEmpty) return;
          Random random = Random();
          int index =
              questions.length == 1 ? 0 : random.nextInt(questions.length - 1);
          displayedQuestions.add(questions.removeAt(index));
        });
      }, remove: () {
        setState(() {
          if (displayedQuestions.isEmpty) return;
          int index = displayedQuestions.length - 1;
          questions.add(displayedQuestions.removeAt(index));
        });
      }),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: displayedQuestions.length,
            itemBuilder: (BuildContext context, int index) => QuestionContainer(
                  question: displayedQuestions[index],
                ),
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                )),
      ),
    );
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
