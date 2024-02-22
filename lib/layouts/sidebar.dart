import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/constants.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: 267,
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset('assets/image/user.png'),
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Rahmatulloh M.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '@username',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sidebar.length,
              itemBuilder: (context, index) {
                var item = sidebar[index];
                return GestureDetector(
                  onTap: () {
                    // handle navigation to item.url
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF3EB),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24,
                          child: SvgPicture.asset(item['svg'].toString()),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          item['name'].toString(),
                          style: const TextStyle(
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
