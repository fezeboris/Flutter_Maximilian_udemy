import 'package:flutter/material.dart';
import 'package:quiz_app/questions_sumary/summary_items.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map(
              (data) {
                return SummaryItem(data);
                // Row(
                //   children: [
                //     Container(
                //         height: 25,
                //         width: 25,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(50),
                //         ),
                //         child: Text(
                //             ((data['question_index'] as int) + 1).toString())),
                //     Expanded(
                //       child: Column(
                //         children: [
                //           Text(data['question'] as String),
                //           const SizedBox(
                //             height: 5,
                //           ),
                //           Text(data['user_answer'] as String),
                //           Text(data['correct_answer'] as String)
                //         ],
                //       ),
                //     )
                //   ],
                // );
              },
            )
          ],
        ),
      ),
    );
  }
}
