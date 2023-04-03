import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wennymelatimarpaung_uts_mobile/controller.dart';
import 'MainPage.dart';

class Daftar extends StatelessWidget {
  final switchController n = Get.put(switchController());
  final TextEditingController NameController = TextEditingController();
  final TextEditingController ContactNumberController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  String Name = "", ContactNumber = "", Email = "";

  Future<dynamic> CustomAlert(BuildContext context, String pesan) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Berhasil terdaftar!!",
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
            content: Image.asset(
              'assets/done.png',
              height: 200,
              width: 300,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text("Register"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text(
              "ABOUT YOU",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: NameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Name: "),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ContactNumberController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Digits Only",
                  labelText: "Contact Number: "),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: EmailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "name@mail.com",
                  labelText: "Email: "),
            ),
            SizedBox(height: 20),
            Text(
              "Name                      : $Name",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "Contact Number   : $ContactNumber",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "Email                       : $Email",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 80),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 100, right: 100),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    CustomAlert(context, "AlertDialog");
                    users.add({
                      'Name          ': NameController.text,
                      'Contact Number': ContactNumberController.text,
                      'Email         ': EmailController.text,
                    });
                    NameController.text = '';
                    ContactNumberController.text = '';
                    EmailController.text = '';
                  }),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 100, right: 100),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MainPage(),
                    ),
                  );
                },
                child: Text(
                  "Create",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 195, 36, 36),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
