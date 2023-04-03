import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wennymelatimarpaung_uts_mobile/controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final switchController n = Get.put(switchController());
  int _index = 0;

  static final List<Widget> _pages = [
    // Promotion
    Container(
      child: ListView(
        children: [
          SizedBox(height: 10),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "PaMer 5 Ayam Lengkuas\nA La Carte + Iced Coffee",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "2 PaNas1 Ayam Lengkuas\n+ 2 Tehbotol Sosro Kotak + 2\nMcFlurry feat. Oreo",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Promo1.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Promo2.png",
                  height: 137,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Lengkuas Sambal Bajak",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "        Share Box",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Promo3.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Promo4.png",
                  height: 137,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Mix Berries McFlurry with\nOreo",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Mix Berries McFlurry with\nFroot Loops",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Promo5.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Promo6.png",
                  height: 137,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "White Chocolate\nStrawberry Pastry Pie",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "            Paket Hantaran McD",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Promo7.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Promo8.png",
                  height: 137,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    // Sides
    Container(
      child: ListView(
        children: [
          SizedBox(height: 10),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "White Chocolate\nStrawberry Pastry Pie",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "               Apple Pie",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Sides1.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Sides2.png",
                  height: 137,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Share Box",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "                                      Honey Garlic Fish Rice",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Sides3.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Sides4.png",
                  height: 137,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Honey Garlic chicken Rice",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "             Rica Rica Fish Rice",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Sides5.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Sides6.png",
                  height: 137,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Rica Rica Chicken Rice",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "              Beef Burger",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Sides7.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Sides8.png",
                  height: 137,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Chicken Burger",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "                       Fish Snack Wrap",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Sides9.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Sides10.png",
                  height: 137,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    // Dessert
    Container(
      child: ListView(
        children: [
          SizedBox(height: 10),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Mix Berries McFlurry with\nOreo",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Text(
                    "Mix Berries McFlurry with\nFroot Loops",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Desserts1.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Desserts2.png",
                  height: 137,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "McFlurry featuring Oreo",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "                Choco McFlurry",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Desserts3.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Desserts4.png",
                  height: 137,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Chocolate Sundae",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "                       Strawberry Sundae",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/Desserts5.png",
                  height: 136,
                ),
                Image.asset(
                  "assets/Desserts6.png",
                  height: 137,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(() => Container(
            color: n.switchValue.value
                ? Color.fromARGB(255, 195, 36, 36)
                : Colors.amber)),
        actions: [
          Obx(() => Switch(
                value: n.switchValue.value,
                onChanged: (newValue) {
                  n.switchValue(newValue);
                },
              )),
        ],
        backgroundColor: Colors.amber,
        title: Text("Wenny's"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: "Promotion",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kebab_dining),
            label: "Sides",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.icecream),
            label: "Desserts",
          ),
        ],
      ),
      body: _pages.elementAt(_index),
    );
  }
}
