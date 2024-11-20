// import 'package:flutter/material.dart';
// import 'package:responsi/pages/listPage.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class HomePage extends StatelessWidget {
//   Future<String?> _getUsername() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getString('username');
//   }

//   void _logout(BuildContext context) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.remove('username');
//     Navigator.pushReplacementNamed(context, '/');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<String?>(
//       future: _getUsername(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Scaffold(
//             body: Center(child: CircularProgressIndicator()),
//           );
//         }

//         if (!snapshot.hasData || snapshot.data == null) {
//           Future.delayed(Duration.zero, () {
//             Navigator.pushReplacementNamed(context, '/');
//           });
//           return const SizedBox.shrink();
//         }

//         String username = snapshot.data!;
//         return Scaffold(
//           appBar: AppBar(
//             title: Text(
//               'Welcome, $username!',
//               style: const TextStyle(color: Colors.white),
//             ),
//             backgroundColor: Colors.black87,
//             centerTitle: true,
//             foregroundColor: Colors.white,
//             actions: [
//               IconButton(
//                 icon: const Icon(Icons.logout),
//                 onPressed: () => _logout(context),
//               ),
//             ],
//           ),
//           body: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: GridView(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 1,
//                 childAspectRatio: 4,
//                 mainAxisSpacing: 16,
//               ),
//               children: [
//                 _buildMenuCard(
//                   context,
//                   title: 'News',
//                   text:
//                       'Get an overview of the latest SpaceFlight news, from various sources! Easily link your users to the right websites.',
//                   icon: Icons.article,
//                   color: Colors.blue,
//                   onTap: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ListPage(type: 'articles'),
//                     ),
//                   ),
//                 ),
//                 _buildMenuCard(
//                   context,
//                   title: 'Blogs',
//                   text:
//                       'Blogs often provide a more detailed overview of launches and missions. A must-have for the serious spaceflight enthusiast.',
//                   icon: Icons.book,
//                   color: Colors.green,
//                   onTap: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ListPage(type: 'blogs'),
//                     ),
//                   ),
//                 ),
//                 _buildMenuCard(
//                   context,
//                   title: 'Reports',
//                   text:
//                       'Space Stations and other missions often publish their data. here is a collection of reports from those space stations and missions.',
//                   icon: Icons.camera_alt_rounded,
//                   color: Colors.red,
//                   onTap: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ListPage(type: 'reports'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildMenuCard(
//     BuildContext context, {
//     required String title,
//     required String text,
//     required IconData icon,
//     required Color color,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16),
//         ),
//         elevation: 4,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//           child: Row(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   color: color.withOpacity(0.2),
//                   shape: BoxShape.circle,
//                 ),
//                 padding: const EdgeInsets.all(16.0),
//                 child: Icon(
//                   icon,
//                   color: color,
//                   size: 32,
//                 ),
//               ),
//               const SizedBox(width: 16),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: const TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       text,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         color: Colors.black54,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
