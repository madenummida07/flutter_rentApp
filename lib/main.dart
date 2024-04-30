import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Посуточная аренда недвижимости',
            style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: <Widget>[
            _timeManagement(),
            _address()
          ],
        )
      ),
    );
  }
}

Row _timeManagement() {
  return Row(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 30,
            left: 25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 475,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5,
                      top: 18),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.nature_sharp,
                        color: Colors.blue,
                        size: 35,),
                      Text('Where to rent', style:
                      TextStyle(color: Colors.blue,
                          fontSize: 25
                      ),),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.lock_clock,
                        color: Colors.blue,
                        size: 35,),
                      Text('When', style:
                      TextStyle(color: Colors.blue,
                          fontSize: 25),)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    ],
  );
}

Row _address() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Icon(Icons.home,
                size: 50,
                color: Colors.blue,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 115),
              child: Text('My location', style:
                TextStyle(color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Text('Before and After', style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),),
            )
          ],
        ),
    ],
  );
}