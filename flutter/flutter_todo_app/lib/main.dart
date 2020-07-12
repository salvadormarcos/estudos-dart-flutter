import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'tarefa.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo List - Flutter Hello World',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Container(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  var tarefas = new List<Tarefa>();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newTaskCtrl = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _carregarTarefas();
  }

  void _carregarTarefas() async {
    final prefs = await SharedPreferences.getInstance();
    var data = prefs.getString('data') ?? '[]';

    final List<Tarefa> tarefas = (jsonDecode(data) as Iterable)
        .map((x) => Tarefa.fromJson(x))
        .toList();

    setState(() => widget.tarefas = tarefas);
  }

  void _salvarTarefas() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('data', jsonEncode(widget.tarefas));
  }

  void adicionar() {
    if (newTaskCtrl.text.isEmpty) {
      return;
    }

    final newItem = Tarefa(descricao: newTaskCtrl.text, feito: false);

    setState(() {
      widget.tarefas.add(newItem);
      newTaskCtrl.clear();
    });

    _salvarTarefas();
  }

  void marcar(Tarefa item, bool novoValor) {
    setState(() => item.feito = novoValor);
    _salvarTarefas();
  }

  void remover(Tarefa item) {
    setState(() => widget.tarefas.remove(item));
    _salvarTarefas();
  }

  @override
  Widget build(BuildContext context) {
    newTaskCtrl.clear();

    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo Lista - Hello World'),
      ),
      body: ListView.builder(
        itemCount: widget.tarefas.length,
        itemBuilder: (ctx, idx) {
          final item = widget.tarefas[idx];
          return Dismissible(
            key: UniqueKey(), // Key(item.titulo),
            background: Container(
              color: Colors.redAccent
            ),
            onDismissed: (dir) {
              remover(item);
            },
            child: CheckboxListTile(
              title: Text(item.descricao),
              value: item.feito,
              onChanged: (value) => marcar(item, value),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () {
          showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  title: Text('Nova tarefa'),
                  content: TextField(
                    controller: newTaskCtrl,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Insira a descrição da tarefa'
                    ),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: new Text('OK'),
                      onPressed: () {
                        adicionar();
                        Navigator.of(context).pop();
                      }
                    ),
                    FlatButton(
                      child: new Text('Cancelar'),
                      onPressed: () {
                        newTaskCtrl.clear();
                        Navigator.of(context).pop();
                      }
                    )
                  ],
                );
              },
              barrierDismissible: false
          );
        },
      ),
    );
  }
}