import 'package:flutter/material.dart';
import 'Daftar.dart';
import 'MainPage.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(131, 188, 35, 35),
      body: ListView(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, left: 5),
                  child: Image.asset(
                    "assets/Logo.png",
                    alignment: Alignment.topLeft,
                    height: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Text(
                    "Wennymelatimarpaung",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Text(
            "Big Mac, a Legend.",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            "Mouthwatering perfection start with two sear-sizzled\n100% pure beef patties and Big Mac sauce, sandwiched\nbetween a sesame seed bun. American cheese, crisp\nlettuce, onions and pickles top it off.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 30, top: 50, bottom: 70),
            child: Image.asset(
              "assets/LandingPage.png",
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 100, right: 100),
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Daftar(),
                  ),
                );
              },
              child: Text(
                "Daftar",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 100, right: 100),
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MainPage(),
                  ),
                );
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 195, 36, 36),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
