import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Flutter Demo', 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),
      home: const HalamanLogin(),
      debugShowCheckedModeBanner: false,
      );
  }
}

// Home Page dengan Grid Menu
// class HomePage extends StatelessWidget {
//   final String username;

//   const HomePage({super.key, required this.username});

//   @override
//   Widget build(BuildContext context) {
//     final vehicles = [
//       Vehicle(
//         id: 1,
//         name: 'Toyota Avanza',
//         type: 'MPV',
//         year: 2023,
//         price: 250000000,
//         color: 'Silver',
//         imageUrl: 'https://via.placeholder.com/300x200/2196F3/FFFFFF?text=Avanza',
//       ),
//       Vehicle(
//         id: 2,
//         name: 'Honda Civic',
//         type: 'Sedan',
//         year: 2024,
//         price: 550000000,
//         color: 'Black',
//         imageUrl: 'https://via.placeholder.com/300x200/F44336/FFFFFF?text=Civic',
//       ),
//       Vehicle(
//         id: 3,
//         name: 'Suzuki Ertiga',
//         type: 'MPV',
//         year: 2023,
//         price: 220000000,
//         color: 'White',
//         imageUrl: 'https://via.placeholder.com/300x200/4CAF50/FFFFFF?text=Ertiga',
//       ),
//       Vehicle(
//         id: 4,
//         name: 'Mitsubishi Xpander',
//         type: 'MPV',
//         year: 2024,
//         price: 280000000,
//         color: 'Red',
//         imageUrl: 'https://via.placeholder.com/300x200/FF9800/FFFFFF?text=Xpander',
//       ),
//       Vehicle(
//         id: 5,
//         name: 'Toyota Fortuner',
//         type: 'SUV',
//         year: 2024,
//         price: 550000000,
//         color: 'Grey',
//         imageUrl: 'https://via.placeholder.com/300x200/9C27B0/FFFFFF?text=Fortuner',
//       ),
//       Vehicle(
//         id: 6,
//         name: 'Honda CR-V',
//         type: 'SUV',
//         year: 2023,
//         price: 600000000,
//         color: 'Blue',
//         imageUrl: 'https://via.placeholder.com/300x200/00BCD4/FFFFFF?text=CR-V',
//       ),
//     ];

//
// // Vehicle Card Widget
// class VehicleCard extends StatelessWidget {
//   final Vehicle vehicle;

//   const VehicleCard({super.key, required this.vehicle});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: InkWell(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DetailPage(vehicle: vehicle),
//             ),
//           );
//         },
//         borderRadius: BorderRadius.circular(12),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//               child: Image.network(
//                 vehicle.imageUrl,
//                 height: 120,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//                 errorBuilder: (context, error, stackTrace) {
//                   return Container(
//                     height: 120,
//                     color: Colors.grey.shade300,
//                     child: const Icon(
//                       Icons.directions_car,
//                       size: 60,
//                       color: Colors.grey,
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     vehicle.name,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     '${vehicle.type} • ${vehicle.year}',
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Colors.grey.shade600,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     'Rp ${vehicle.price ~/ 1000000} Jt',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue.shade700,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Detail Page
// class DetailPage extends StatelessWidget {
//   final Vehicle vehicle;

//   const DetailPage({super.key, required this.vehicle});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Vehicle Detail'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.network(
//               vehicle.imageUrl,
//               height: 250,
//               width: double.infinity,
//               fit: BoxFit.cover,
//               errorBuilder: (context, error, stackTrace) {
//                 return Container(
//                   height: 250,
//                   color: Colors.grey.shade300,
//                   child: const Icon(
//                     Icons.directions_car,
//                     size: 100,
//                     color: Colors.grey,
//                   ),
//                 );
//               },
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     vehicle.name,
//                     style: const TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     'Rp ${_formatPrice(vehicle.price)}',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue.shade700,
//                     ),
//                   ),
//                   const SizedBox(height: 24),
//                   const Text(
//                     'Specifications',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   _buildSpecRow('Type', vehicle.type),
//                   _buildSpecRow('Year', vehicle.year.toString()),
//                   _buildSpecRow('Color', vehicle.color),
//                   const SizedBox(height: 24),
//                   const Text(
//                     'Description',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   Text(
//                     'This ${vehicle.name} is a premium ${vehicle.type.toLowerCase()} '
//                     'manufactured in ${vehicle.year}. It features modern design, '
//                     'comfortable interior, and advanced safety features. '
//                     'Perfect for family trips and daily commuting.',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey.shade700,
//                       height: 1.5,
//                     ),
//                   ),
//                   const SizedBox(height: 32),
//                   SizedBox(
//                     width: double.infinity,
//                     height: 50,
//                     child: ElevatedButton.icon(
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             content: Text('Inquiring about ${vehicle.name}'),
//                             behavior: SnackBarBehavior.floating,
//                           ),
//                         );
//                       },
//                       icon: const Icon(Icons.message),
//                       label: const Text(
//                         'Contact Dealer',
//                         style: TextStyle(fontSize: 16),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSpecRow(String label, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         children: [
//           SizedBox(
//             width: 100,
//             child: Text(
//               label,
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey.shade600,
//               ),
//             ),
//           ),
//           Text(
//             ': $value',
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   String _formatPrice(int price) {
//     return price.toString().replaceAllMapped(
//           RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
//           (Match m) => '${m[1]}.',
//         );
//   }
// }

// // Vehicle Model
// class Vehicle {
//   final int id;
//   final String name;
//   final String type;
//   final int year;
//   final int price;
//   final String color;
//   final String imageUrl;

//   Vehicle({
//     required this.id,
//     required this.name,
//     required this.type,
//     required this.year,
//     required this.price,
//     required this.color,
//     required this.imageUrl,
//   });
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "List Tile",
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//           title: Text("List Tile",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//           ),
//         ),
//         body: ListView(
//           children: [
//             ListTile(
//               title: Text("Sandi Sandoro"),
//               subtitle: Text("Aku Mau pinter Ngoding huhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuh",
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               ),
              
//               leading: CircleAvatar(),
//               trailing: Text("10:20 PM"),
//             ),
//             ListTile(
//               title: Text("Sandi Sandoro"),
//               subtitle: Text("Aku Mau pinter Ngoding huhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuh",
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               ),
              
//               leading: CircleAvatar(),
//               trailing: Text("10:20 PM"),
//             ),
//             ListTile(
//               title: Text("Sandi Sandoro"),
//               subtitle: Text("Aku Mau pinter Ngoding huhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuh",
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               ),
              
//               leading: CircleAvatar(),
//               trailing: Text("10:20 PM"),
//             ),
//             ListTile(
//               title: Text("Sandi Sandoro"),
//               subtitle: Text("Aku Mau pinter Ngoding huhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuh",
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               ),
              
//               leading: CircleAvatar(),
//               trailing: Text("10:20 PM"),
//             ),
//             ListTile(
//               title: Text("Sandi Sandoro"),
//               subtitle: Text("Aku Mau pinter Ngoding huhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuh",
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               ),
              
//               leading: CircleAvatar(),
//               trailing: Text("10:20 PM"),
//             ),
//             ListTile(
//               title: Text("Sandi Sandoro"),
//               subtitle: Text("Aku Mau pinter Ngoding huhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuh",
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               ),
              
//               leading: CircleAvatar(),
//               trailing: Text("10:20 PM"),
//             ),
//             ListTile(
//               title: Text("Sandi Sandoro"),
//               subtitle: Text("Aku Mau pinter Ngoding huhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuhuh",
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               ),
              
//               leading: CircleAvatar(),
//               trailing: Text("10:20 PM"),
//             ),
//           ],
//         ),
//       ),
//     ); 
//   }
// }