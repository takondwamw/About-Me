import 'package:flutter/material.dart' show AppBar, AssetImage, BuildContext, Center, CircleAvatar, Colors, Column, CrossAxisAlignment, Divider, EdgeInsets, FloatingActionButton, FontWeight, Icon, Icons, MaterialApp, Padding, Row, Scaffold, SizedBox, State, StatefulWidget, Text, TextStyle, Widget, runApp;

void main() {
  runApp(MaterialApp(
    home: NinjaCard()
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  @override
  int experience = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar : AppBar(
        title: Text('About Me',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],

        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed :(){
          setState(() {
            experience += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/me.jpg'),
                radius: 80.00,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Takondwa Kapyola',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Years OF Experience',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            const SizedBox(height: 30.0),

            Text(
              '$experience',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text('tkapyola@lyncsystems.tech',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),)
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text('+265 996 662 347',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),)
              ],
            ),
          ],
        ),
      )
    );
  }
}


