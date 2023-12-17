import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// Add this import statement if you haven't already
// import 'dart:io' show Platform;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 9,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Where do you want to go?',
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.teal,
                        ),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: GoogleMap(
                // Ensure you have a valid API key
                // apiKey: 'YOUR_API_KEY',
                myLocationEnabled: true,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(10.7775533, 106.690184),
                  zoom: 15.0,
                ),
                // Add the following lines to handle map initialization
                onMapCreated: (GoogleMapController controller) {
                  // You can use this controller to interact with the map
                  // e.g., controller.animateCamera(...)
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       flex: 9,
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           hintText: 'Where do you want to go?',
//                         ),
//                       ),
//                     ),
//                     const Expanded(
//                       flex: 1,
//                       child: IconButton(
//                         icon: Icon(
//                           Icons.search,
//                           color: Colors.teal,
//                         ),
//                         onPressed: null,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const Expanded(
//               flex: 9,
//               child: GoogleMap(
//                 myLocationEnabled: true,
//                 initialCameraPosition: CameraPosition(
//                   target: LatLng(10, 10),
//                   zoom: 5,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.teal,
//       //   title: const Center(
//       //     child: Text(
//       //       'Home',
//       //       style: TextStyle(color: Colors.white),
//       //     ),
//       //   ),
//       // ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       flex: 9,
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           hintText: 'Where do you want to go?',
//                         ),
//                       ),
//                     ),
//                     const Expanded(
//                       flex: 1,
//                       child: IconButton(
//                         icon: Icon(
//                           Icons.search,
//                           color: Colors.teal,
//                         ),
//                         onPressed: null,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const Expanded(
//               flex: 9,
//               child: GoogleMap(
//                 myLocationEnabled: true,
//                 initialCameraPosition: CameraPosition(
//                   target: LatLng(10, 10),
//                   zoom: 5,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
