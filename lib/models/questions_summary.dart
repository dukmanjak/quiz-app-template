import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: summaryData.map((data) {
          return Row(
            children: [
              // Column for the number
              Column(
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      fontWeight:
                          FontWeight.bold, // Optional: Make the number bold
                    ),
                  ),
                ],
              ),
              // Padding for spacing between the number column and the text column
              const SizedBox(width: 8),
              // Column for the rest of the text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
