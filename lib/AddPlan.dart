import 'package:flutter/material.dart';
import 'package:onlinetrainer/AddUprajn.dart';

// Define a custom Form widget.
class AddPlan extends StatefulWidget {
  AddPlan();

  @override
  _AddPlanState createState() => _AddPlanState();
}

class _AddPlanState extends State<AddPlan> {
  _AddPlanState();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Добавить упражнение"),
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              "Создать новое упражнение",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.blue,
            textColor: Colors.white,
            leading: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddUprajn()),
              );
            },
          )
        ],
      )),
    );
  }
}
