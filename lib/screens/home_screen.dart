import 'package:flutter/material.dart';
import '../models/car.dart';
import '../widgets/car_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Car> cars = [
    Car(placa: 'EGN 100', conductor: 'Jhon Ariza', company: 'Renault'),
    Car(placa: 'FRS 164', conductor: 'Andres Quiñones', company: 'Mazda'),
    Car(placa: 'BPU 164', conductor: 'Nicol Miranda', company: 'BMW'),
    Car(placa: 'QBW 59D', conductor: 'Bridi Jerez', company: 'Auteco'),
    Car(placa: 'BPT 256', conductor: 'Andrea Miranda', company: 'Chevrolet'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white, // Fondo blanco para el cuadro
            borderRadius: BorderRadius.circular(12), // Bordes redondeados
            boxShadow: [
              BoxShadow(
                color: Colors.black26, // Sombra suave
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: const Text(
            'Carros Eléctricos',
            style: TextStyle(
              color: Colors.blueAccent, // Texto en azul
              fontWeight: FontWeight.bold, // Negrita
              fontSize: 18, // Tamaño del texto
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: cars.length,
          itemBuilder: (context, index) => CarItem(car: cars[index]),
        ),
      ),
    );
  }
}
