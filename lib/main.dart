import 'package:flutter/material.dart';
import 'config.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _url = "https://www.linkedin.com";
  String _url1 = "https://www.youtube.com";
  String _phone = "tel:+964 751 2405455";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: SizedBox(
                  width: 100,
                  height: 250,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/1.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 60,
                        alignment: Alignment.center,
                        color: Colors.cyan,
                        child: Text("Looking For a job"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Column(
                  children: [
                    Text("name: " + name),
                    Text("title: " + title),
                    Text("location: " + location),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Column(
                  children: [
                    Text("bio"),
                    Text("dsfjkhsdjkfhjkldshjfjkl"),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, elevation: 0),
                    onPressed: () async {
                      if (!await launch(_url)) {
                        await launch(_url);
                      }
                    },
                    child: Card(
                      child: ListTile(
                        title: Text("Linked"),
                        leading: Icon(Icons.linked_camera_sharp),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, elevation: 0),
                    onPressed: () async {
                      if (!await launch(_url1)) {
                        await launch(_url1);
                      }
                    },
                    child: Card(
                      child: ListTile(
                        title: Text("youtube"),
                        leading: Icon(Icons.youtube_searched_for),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, elevation: 0),
                    onPressed: () async {
                      if (!await launch(_phone.toString())) {
                        await launch(_phone);
                      }
                    },
                    child: Card(
                      child: ListTile(
                        title: Text("phone"),
                        leading: Icon(Icons.call),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
