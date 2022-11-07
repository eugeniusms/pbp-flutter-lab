import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // widget root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter 7',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Program Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // variabel counter bernilai private
  int _counter = 0;

  // decremenet setState(counter)
  void _decrementCounter() {
    setState(() {
      // decrement hanya berjalan saat _counter > 0 (tidak bisa negatif)
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  // increment setState(counter)
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
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            // menampilkan ganjil vs genap sesuai kondisi
            _counter % 2 == 0 ? 
                  // saat habis dibagi 0
                  const Text(
                    "GENAP", 
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ) :
                  // saat tidak habis dibagi 0
                  const Text(
                    "GANJIL",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
              Text(
                // menampilkan nilai _counter
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
          ],

        ),
      ),
      
      // menambahkan tombol increment dan decrement
      floatingActionButton: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(left:35, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // decrement button
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
              // increment button
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        )

    );
  }
}

// References:
// 1) https://api.flutter.dev/index.html
// 2) https://googleflutter.com/flutter-center-align-title-in-appbar/#:~:text=Flutter%20%E2%80%93%20Center%20Align%20Application%20Bar,the%20centerTitle%20property%20to%20true.