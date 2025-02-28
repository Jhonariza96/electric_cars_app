import 'package:flutter/material.dart';
import '../models/car.dart';

class CarItem extends StatelessWidget {
  final Car car;

  const CarItem({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade200,
          child: const Icon(Icons.directions_car, color: Colors.white),
        ),
        title: Text(
          'Placa: ${car.placa}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Conductor: ${car.conductor}'),
            Text('Empresa: ${car.company}'),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}

