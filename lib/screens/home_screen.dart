import 'package:aichat/helper/pref.dart';
import 'package:aichat/widget/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helper/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnboarding = false;
  }

  @override
  Widget build(BuildContext context) {
    //initialize device size
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          appName,
          style: TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              padding: const EdgeInsets.only(right: 10),
              onPressed: () {},
              icon: const Icon(
                Icons.dark_mode,
                color: Colors.blue,
                size: 26,
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: mq.width*.04,vertical: mq.height*.01),
        children: [
          HomeCard()
        ],
      ),
    );
  }
}
