import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  //variable,propiedad
  @override
  Widget build(BuildContext context) {
    const fontsize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screeen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Contador', style: fontsize30),
            Text('$counter', style: fontsize30),
          ],
        ),
      ),

      //construccion de un boton
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // cambiar posicion
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            /*onPressed: () {
              counter++;
              //actualizar interfaz de usuario
              setState(() {});
            },*/
            onPressed: () => setState(() => counter++),
          ),
          /*const SizedBox(
            width: 20,
          ),*/
          FloatingActionButton(
            child: const Icon(Icons.restore_outlined),
            onPressed: () {
              counter = 0;
              //actualizar interfaz de usuario
              setState(() {});
            },
          ),
          /*const SizedBox(
            width: 20,
          ),*/
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () {
              counter--;
              //actualizar interfaz de usuario
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
