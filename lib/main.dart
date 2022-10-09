import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Apple Products',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: [
              Badge(
                  badgeContent: Text("9"),
                  child: Container(
                    width: 30,
                    height: 25,
                    color: Colors.blueGrey,
                    child: Center(child: Text('7')),
                  ))
            ]),
        drawer: Drawer(),
        body: Container(
          width: double.infinity,
          color: Colors.blue,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://photos5.appleinsider.com/gallery/30575-50260-iphonexr-red-blackbackground-xl.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 300,
                  height: 200,
                  child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),


                ],
              ))
            ],
          ),
        ));
  }
}

Widget _itemlkist() {
  return Container(
    width: 100,
    height: 100,
    color: Colors.blue,
  );
}
