import 'package:flutter/material.dart';

import 'WidgetDoPaulo.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  int _contador = 0;

  void _incrementCounter() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetDoPaulo pauleta = new WidgetDoPaulo();
    print("xxxxxxxxxxxxxxxxxx");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
}