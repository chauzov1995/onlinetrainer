import 'package:flutter/material.dart';


// Define a custom Form widget.
class AddUprajn extends StatefulWidget {
  AddUprajn();

  @override
  _AddUprajnState createState() => _AddUprajnState();
}

class _AddUprajnState extends State<AddUprajn> {
  _AddUprajnState();

  late TextEditingController _controllernazv = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controllernazv.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Создание упражнения"),
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: TextField(
              controller: _controllernazv,
              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Название',
                hintText: "Жим штанги"
              ),
            ),
          ),
          ListTile(
            title: TextField(
              controller: _controllernazv,
              // obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Вес по умолчанию',
                  hintText: "8"
              ),
            ),
          ),
          ListTile(
            title: TextField(
              controller: _controllernazv,
              // obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Повторений по умолчанию',
                  hintText: "8"
              ),
            ),
          ),
          ListTile(
            title: TextField(
              controller: _controllernazv,
              // obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Подходов по умолчанию',
                  hintText: "3"
              ),
            ),
          ),
          TextButton(onPressed: (){


          }, child: Text("asdasdasd"))
        ],
      )),
    );
  }
}
