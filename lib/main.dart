import 'package:contador_wear/count/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AmbientMode(
      child: const CounterPage(),
      builder: (context, mode, child) {
      return MaterialApp(
        //title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.compact,
          useMaterial3: true,
          colorScheme: mode == WearMode.active ? 
          const ColorScheme.dark(
            primary: Color(0xFF00B5FF)
          )
          : const ColorScheme.dark(
            primary: Colors.white24, 
            background: Colors.white10, 
            onSurface: Colors.white10)
          //primarySwatch: Colors.blue,
        ),
        home: child,
      );
    });
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Total pushes:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/