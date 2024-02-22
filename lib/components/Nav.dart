import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/components/UI/SearchInput.dart';

class NavWidget extends StatelessWidget {
  const NavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFFFFF)),
      margin: EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(color: Color(0xFFFFFF)),
            child: Row(
              children: [
                Text("Ташкент"),
                SizedBox(width: 16),
                Text("Privacy policy"),
                SizedBox(width: 16),
                Text("Biz haqimizda"),
                SizedBox(width: 16),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // margin: const EdgeInsets.symmetric(vertical: 24),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                        "assets/nav/logo.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const SearchInput(),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    // Add your action here
                  },
                  icon: Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: SvgPicture.asset('assets/nav/message.svg'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24,),
        ],
      ),
    );
  }
}
