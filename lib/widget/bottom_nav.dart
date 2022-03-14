import 'package:flutter/material.dart';
import 'package:plantapp/data/bottom_menu.dart';
import 'package:plantapp/page/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PageController pageController = PageController();
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: child.length,
        controller: pageController,
        onPageChanged: (value) => setState(() => selectIndex = value),
        itemBuilder: (itemBuilder, index) {
          return Container(
            child: child[index],
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; bottomMenu.length > i; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pageController.jumpToPage(i);
                      selectIndex = i;
                    });
                  },
                  child: Image.asset(
                    bottomMenu[i].imagepath,
                    color: selectIndex == i ? Colors.green : Colors.grey.withOpacity(0.5),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

List child = [
  const HomePage(),
  Container(color: Colors.blue),
  Container(color: Colors.teal),
  Container(color: Colors.white),
];