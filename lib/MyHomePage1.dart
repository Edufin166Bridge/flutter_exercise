import 'package:flutter/material.dart';

import 'WidgetDoPaulo.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  int _contador = 0;

  void _incrementCounter() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetDoPaulo? pauleta = new WidgetDoPaulo();
    print("xxxxxxxxxxxxxxxxxx");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: _buttonStyle(),
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
              child: Text('Minha Segunda Rota'),
            ),
            pauleta,
            Text(
              '${_contador} <<<<<<<<<',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  ButtonStyle _buttonStyle() {
    return ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered))
                    return Colors.blue.withOpacity(0.04);
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed))
                    return Colors.blue.withOpacity(0.12);
                  return null; // Defer to the widget's default.
                },
              ),
            );
  }
}