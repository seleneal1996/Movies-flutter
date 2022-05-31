import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //variable,propiedad

  @override
  Widget build(BuildContext context) {
    const fontsize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screeen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador', style: fontsize30),
            Text('$counter', style: fontsize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop, // cambiar posicion
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;

          //actualizar interfaz de usuario
          //print('Hola mundo: $counter');
        },
      ),
    );
  }
}
