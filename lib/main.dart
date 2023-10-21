import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  questions.shuffle();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.amber,
      )),
      home: Scaffold(
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Snackbar"),
                ),
              );
            },
            child: const Icon(Icons.ac_unit),
          );
        }),
        appBar: AppBar(title: const Text("Hello World!")),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(35),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: LayoutBuilder(
              builder: (context, constraints) {
                var children = [
                    for (var question in questions)
                      QuestionContainer(
                        question: question,
                      ),
                  ];
                if(constraints.maxHeight > constraints.maxWidth) {
                  return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: children
                );
                }
                else {
                  return Row(
                    children: children,
                  );
                }
              }
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionContainer extends StatelessWidget {
  final Question question;

  const QuestionContainer({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: question.questionCategorie.color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
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
              ),
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

