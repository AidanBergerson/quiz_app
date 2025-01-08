import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: summaryData.map(
            (data) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: data['correct_answer'] == data['user_answer'] ? Colors.blue : Colors.pink,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(  
                      children: [
                        Text(
                          data['question'] as String,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'] as String,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        )),
      ),
    );
  }
}
