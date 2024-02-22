import 'package:flutter/material.dart';
import 'package:responsivedashboard/screens/tabs.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth - 487,
      height: screenHeight - 150,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xFFFFFFFF)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Salom, Asaloy",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Bugun nimani o‘rganmoqchisiz?",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF666666),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Darsliklar",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          TabsView(),
        ],
      ),
    );
  }
}
