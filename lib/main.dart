import 'package:flutter/material.dart';
import 'package:EnerGo/pages/qa.dart';
import 'package:EnerGo/pages/map.dart';
import 'package:EnerGo/pages/general.dart';
import 'package:EnerGo/pages/favourites.dart';

void main() {
  runApp(const MaterialApp(
    home: EnerGo(),
  ));
}

class EnerGo extends StatefulWidget {
  const EnerGo({Key? key}) : super(key: key);
  @override
  State<EnerGo> createState() => _EnerGoState();
}

class _EnerGoState extends State<EnerGo> {
  var pageId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              "images/home.png",
              width: 30,
              height: 30,
            ),
          ),
        ),
          label: "",
        ),
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
      ],
        onTap: changePage,
      ),
      body: pageNavigator(),
    );
  }
  void changePage(int index){
    setState(() {
      pageId = index;
    });
  }
  Widget pageNavigator(){
    switch(pageId){
      case(0): return GeneralPage();
      case(1): return MapPage();
      case(2): return QaPage();
      case(3): return FavouritesPage();
      default: return GeneralPage();
    }
  }
}



