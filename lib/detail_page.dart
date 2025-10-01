import 'package:flutter/material.dart';
import 'package:latihan_flutter/vehicle.dart'; // Impor class Vehicle

class DetailPage extends StatefulWidget {
  final Vehicle vehicle;

  const DetailPage({
    super.key,
    required this.vehicle,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.vehicle.name),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Gambar Utama
            Image.network(
              widget.vehicle.imageUrls[0],
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 250,
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Icon(
                      Icons.directions_car,
                      size: 80,
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),
            
            // Konten Detail
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.vehicle.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  Text(
                    widget.vehicle.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  
                  const Divider(),
                  
                  _buildDetailRow('Tipe', widget.vehicle.type),
                  _buildDetailRow('Mesin', widget.vehicle.engine),
                  _buildDetailRow('Bahan Bakar', widget.vehicle.fuelType),
                  _buildDetailRow('Harga', widget.vehicle.price),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget pembantu untuk membuat baris detail
  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}