import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Id_Card(),
  ));
}

class Id_Card extends StatefulWidget {
  @override
  State<Id_Card> createState() => _Id_CardState();
}

class _Id_CardState extends State<Id_Card> {
  var levelUp = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        title: Text(
          'ID CARD'.toUpperCase(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/anh1.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.amber,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey[50],
                fontSize: 15,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Tran Dinh Cuong',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'level',
              style: TextStyle(
                  color: Colors.grey[50], fontSize: 15, letterSpacing: 1.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              levelUp.toString(),
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
                onPressed: () {
                  levelUp += 1;
                  print(levelUp);
                },
                child: Text('Level up')),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  'trandinhcuong@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[50],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          levelUp += 1;
          print('levelup click : $levelUp');
        },
        child: Center(child: Text('LvUp')),
      ),
    );
  }
}
