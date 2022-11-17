import 'package:flutter/material.dart'; // import ui material dari flutter
import 'package:counter_7/pages/Drawer.dart';

// CounterPage is a statefulwidget
class CounterPage extends StatefulWidget { 
  // inisiasi constructor sesuai key & title
  const CounterPage({super.key, required this.title});
  final String title;

  // inisiasi state dari CounterPage -> _CounterState (private)
  @override
  State<CounterPage> createState() => _CounterState();
}

// _CounterState is a state of CounterPage
class _CounterState extends State<CounterPage> {
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

  // Susunan widget dari CounterPage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar berisi judul dengan align left 
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: false,
      ),
      drawer: buildDrawer(context), // build drawer
      // body center disusun dengan isi kolom dari child
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          // children berisi 3 widget berisi tulisan GANJIL/GENAP & updated _counter
          children: <Widget>[
            // menampilkan ganjil vs genap sesuai kondisi
            _counter % 2 == 0 
                  // saat habis dibagi 0
                  ? const Text(
                      "GENAP", // teks yang ditampilkan "GENAP"
                      style: TextStyle(
                        color: Colors.red, // dengan warna merah
                      ),
                    )
                  // saat tidak habis dibagi 0
                  : const Text(
                      "GANJIL",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
              Text(
                // menampilkan nilai _counter
                '$_counter',
                // style dari teks _counter
                style: Theme.of(context).textTheme.headline4,
              ),
          ],

        ),
      ),
      
      // tombol increment dan decrement
      floatingActionButton: Container(
          // layout container button
          width: double.infinity,
          margin: const EdgeInsets.only(left:35, bottom: 5),

          // the buttons
          child: Row(
            // align antar children (kedua button)
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // decrement button
              _counter > 0 
                ? FloatingActionButton(
                  onPressed: _decrementCounter, // ketika tombol diklik maka akan setState(_counter--)
                  tooltip: 'Decrement', // tooltip
                  child: const Icon(Icons.remove), // icon tombol
                ) 
                : const SizedBox(), // jika _counter <= 0 maka tidak menampilkan tombol decrement
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
// 3) https://stackoverflow.com/questions/53455358/how-to-present-an-empty-view-in-flutter