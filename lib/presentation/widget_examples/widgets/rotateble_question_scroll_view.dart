import 'package:flutter/material.dart';
import 'package:learn_flutter_1/presentation/components/custom_button.dart';
import 'package:learn_flutter_1/presentation/components/switch_example.dart';
import 'package:learn_flutter_1/presentation/navigation_example_screens/screen_two.dart';
import 'package:learn_flutter_1/presentation/quiz/classes/quiz_objects.dart';
import 'package:learn_flutter_1/presentation/widget_examples/widgets/buttons_example.dart';
import 'package:learn_flutter_1/presentation/quiz/widgets/question_container.dart';

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
          SizedBox(
            width: 300,
            child: QuestionContainer(
              question: question,
            ),
          ),
        ButtonExample(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ScreenTwo()));
          },
        ),
        CustomButton(
          onTap: () {
            Navigator.pushNamed(context, "/screenOne");
          },
        ),
        const SwitchExample(),
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
