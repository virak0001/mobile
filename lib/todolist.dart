import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
  @override
  _TodolistState createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  Map <String, bool> todos = {
    "JS":false,
    "Java":false,
    "PHP":false,
    "Database":false
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo List Apps"),
        ),
        body: ListView(
          children: todos.keys.map((String key){
            return CheckboxListTile(
              title: Text(key),
              value: todos[key],
              onChanged: (bool value){
                setState(() {
                  todos[key] = value;
                });
              },
            );
          }).toList(),
        ),
    );
  }
}