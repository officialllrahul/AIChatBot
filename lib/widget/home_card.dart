import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      color: Colors.blue.withOpacity(.2),
      elevation: 0,
      child: Row(
        children: [
          Lottie.asset("assets/lottie/ai_hand_wavy.json",
              width: mq.width * .35),
          Spacer(),
          Text(
            "AI ChatBot",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w500,letterSpacing: .5),
          ),
          Spacer(flex: 2,)
        ],
      ),
    );
  }
}
