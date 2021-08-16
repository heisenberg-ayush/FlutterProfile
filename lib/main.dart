import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _appColor = Colors.purpleAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _appColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/Ayush.jpeg'),
          ),
          Text(
            'Ayush Pandey',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster',
            ),
          ),
          Text(
            'Software Engineer',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
              fontFamily: 'PlayfairDisplay',
            ),
          ),
          SizedBox(
            height: 20,
            width: 200,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: _appColor,
                ),
                Text(
                  '\t\t\t\t\t+91 8630106446',
                  style: TextStyle(
                    color: _appColor,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print('email');
            },
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: _appColor,
                ),
                title: Text(
                  'heisenberg.ayush069@gmail.com',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: _appColor,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _colorButton(Colors.purpleAccent),
              _colorButton(Colors.indigo),
              _colorButton(Colors.blue),
              _colorButton(Colors.green),
              _colorButton(Colors.yellow),
              _colorButton(Colors.orange),
              _colorButton(Colors.red),
            ],
          ),
        ],
      ),
    );
  }

  /// Returns a color button.
  ///
  Widget _colorButton(Color color) {
    return Container(
      height: 18.0,
      width: 18.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: FlatButton(
        color: color,
        onPressed: () => _changeColor(color),
        child: SizedBox(),
      ),
    );
  }

  /// Changes the primary color of the application.

  void _changeColor(Color color) {
    setState(() {
      _appColor = color;
    });
  }
}
