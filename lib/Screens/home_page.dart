import 'package:flutter/material.dart';
import 'package:kayan/Data/posts.dart';
import 'package:kayan/Widgets/clockc_in_card.dart';
import 'package:kayan/Widgets/post_card.dart';
import 'package:kayan/Widgets/tabs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color(0xFF006AB0),
        ),
        title: Image.asset(
          "lib/Assets/45ae405a-e7e0-4f32-9d3d-c74e03f7e713.png",
          fit: BoxFit.contain,
          width: 80,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClockInCard(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => posts[index],
              itemCount: posts.length,
            )
          ],
        ),
      ),
      bottomNavigationBar: const Tabs(),
      floatingActionButton: SizedBox(
        height: 50,
        width: 50,
        child: FittedBox(
          child: FloatingActionButton(
              elevation: 1,
              tooltip: "Add Transaction",
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff29bcf5), Color(0xff0c5c8f)]),
                ),
                child: const Icon(Icons.add),
              ),
              onPressed: () {
                print("icon pressed");
              }),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
