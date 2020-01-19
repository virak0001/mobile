import 'package:flutter/material.dart';

class ModalPopUp extends StatefulWidget {
  @override
  _ModalPopUpState createState() => _ModalPopUpState();
}

class _ModalPopUpState extends State<ModalPopUp> {

  createModal(BuildContext context) {
    TextEditingController todoController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
              title: Text("Todo List"),
              content: TextField(
                 autofocus: true,
                 controller: todoController,
              ),
              actions: <Widget>[
                MaterialButton(
                  child: Text("Add New"),
                  onPressed: (){
                    Navigator.of(context).pop(todoController.text.toString());
                    debugPrint(todoController.text.toString());
                  },
                )
              ],
            );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo List"),
        ),
        body: Center(
          
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
          onPressed: () {
            createModal(context);
          },
        ));
  }
}
