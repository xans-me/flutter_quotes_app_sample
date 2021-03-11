import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: Wisdom(),
    ));

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  // private variable
  int _index = 0;

  List quotes = [
    "Sedia payung sebelum hujan",
    "Kecewa adalah bahagia yang tertunda",
    "Bodoh Kau",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontStyle: FontStyle.italic,
                        fontSize: 16.5,
                      ),
                    ))),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: TextButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(10, 89, 49, 50))),
                onPressed: _showQuote,
                icon: Icon(
                  Icons.wb_sunny,
                  color: Colors.black,
                ),
                label: Text(
                  "Inspire Me!",
                  style: TextStyle(color: Colors.white, fontSize: 14.8),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    // increment our index / counter by 1
    setState(() {
      _index += 1;
    });
  }
}
