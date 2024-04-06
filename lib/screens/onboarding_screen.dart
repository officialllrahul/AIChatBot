import 'package:aichat/model/onboard.dart';
import 'package:aichat/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = PageController();
    final list = [
      //onboard1
      Onboard(
          title: 'Ask me anything',
          subtitle:
              'I can be your Best Friends & you can ask me anything & I will help you.',
          lottie: 'AiPlay'),
      Onboard(
          //onboard2
          title: 'Imagination to reality',
          subtitle:
              'Just imagine anything and & let me know. I will create something wonderful for you.',
          lottie: 'AiAskMe'),
    ];
    return Scaffold(
      body: PageView.builder(
        controller: c,
        itemCount: list.length,
        itemBuilder: (ctx, ind) {
          final isLast = ind == list.length - 1;
          return Column(
            children: [
              Lottie.asset("assets/lottie/${list[ind].lottie}.json",
                  height: mq.height * .6, width: isLast ? mq.width * 1 : null),
              Text(
                list[ind].title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    letterSpacing: .5),
              ),
              SizedBox(height: mq.height * .015),
              SizedBox(
                width: mq.width * .7,
                child: Text(
                  list[ind].subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14, letterSpacing: .5, color: Colors.black54),
                ),
              ),
              const Spacer(),
              Wrap(
                spacing: 10,
                children: List.generate(
                    list.length,
                    (i) => Container(
                          width: i == ind ? 15 : 10,
                          height: 8,
                          decoration: BoxDecoration(
                              color: i == ind ? Colors.blue : Colors.grey,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                        )),
              ),
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: const StadiumBorder(),
                      elevation: 0,
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                      minimumSize: Size(mq.width * .4, 50)),
                  onPressed: () {
                    if (isLast) {
                      // Navigator.of(context).pushReplacement(
                      //     MaterialPageRoute(builder: (_) => HomeScreen()));
                      Get.off(()=>const HomeScreen());
                    } else {
                      c.nextPage(
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.ease);
                    }
                  },
                  child: Text(
                    isLast ? 'Finish' : "Next",
                  )),
              const Spacer(
                flex: 2,
              )
            ],
          );
        },
      ),
    );
  }
}
