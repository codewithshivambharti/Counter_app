import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Simple Counter', home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // Our state variables
  int counter = 0;
  FontWeight fonts = FontWeight.bold;
  double abc = 200;
  Color boxColor = Colors.blue;
  String emoji = '😐';

  // This function runs when button is pressed
  void addOne() {
    setState(() {
      // Update counter
      counter = counter + 1;

      // Change color based on counter
      if (counter < 5) {
        boxColor = Colors.blue;
        fonts = FontWeight.bold;
        abc = 200;
        emoji = '😐';
      } else if (counter < 10) {
        boxColor = Colors.green;
        fonts = FontWeight.normal;
        abc = 300;
        emoji = '🙂';
      } else if (counter < 15) {
        boxColor = Colors.orange;
        fonts = FontWeight.normal;
        abc = 350;
        emoji = '😄';
      } else {
        boxColor = Colors.red;
        fonts = FontWeight.normal;
        abc = 400;
        emoji = '🎉';
      }
    });
  }

  void addsub() {
    setState(() {
      // Update counter
      counter = counter - 1;
      // Change color based on counter
      if (counter < 0) {
        boxColor = Colors.blue;
        fonts = FontWeight.bold;
        abc = 200;
        emoji = '😧';
      } else if (counter <= -5) {
        boxColor = Colors.green;
        fonts = FontWeight.normal;
        abc = 300;
        emoji = '😢';
      } else if (counter < -10) {
        boxColor = Colors.orange;
        fonts = FontWeight.normal;
        abc = 350;
        emoji = '😭';
      } else {
        boxColor = Colors.red;
        fonts = FontWeight.normal;
        abc = 400;
        emoji = '🥶';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Show emoji
            Text(emoji, style: TextStyle(fontSize: 50)),

            SizedBox(height: 20),

            // Show counter in colored box
            Container(
              width: abc,
              height: 100,
              color: boxColor,
              child: Center(
                child: Text(
                  '$counter',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: fonts,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Button to add
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: addOne, child: Text('Add +1')),
                ElevatedButton(onPressed: addsub, child: Text('Add -1')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
