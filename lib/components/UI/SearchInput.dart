import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 560,
      margin: const EdgeInsets.only(left: 80),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFF9F9F9),
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Qidirish...',
                hintStyle: TextStyle(
                  color: Color(0xFFB3B3B3),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: SvgPicture.asset(
              'assets/nav/search.svg',
              height: 16,
              width: 16,
            ),
          ),
        ],
      ),
    );
  }
}
