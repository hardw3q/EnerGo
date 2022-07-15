import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: EnerGo(),
  ));
}

class EnerGo extends StatelessWidget{
  const EnerGo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Center(
          child: Container(
            child: Image.asset(
                "images/home.png",
                width: 30,
                height: 30,
                ),
            padding: const EdgeInsets.only(top: 10),
          ),
        ),
            label: ""),
        BottomNavigationBarItem(icon: Center(
          child: Image.asset(
              "images/locator.png",
            width: 30,
            height: 30,),
        ),
            label: ""),
        BottomNavigationBarItem(icon: Center(
          child: Image.asset(
              "images/sendto.png",
            width: 30,
            height: 30,),
        ),
            label: ""),
        BottomNavigationBarItem(icon: Center(
          child: Image.asset(
              "images/favourites.png",
            width: 30,
            height: 30,),
        ),
            label: ""),
      ]),
      body: Container(),
    );
  }
}
