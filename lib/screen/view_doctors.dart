// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ViewDoctors extends StatefulWidget {
//   const ViewDoctors({super.key});

//   @override
//   State<ViewDoctors> createState() => _ViewDoctorsState();
// }

// class _ViewDoctorsState extends State<ViewDoctors> {
//   // void onViewdoctor(){
//   //   Navigator.pushNamed(context, "/ondoctor");
//   // }

//   void onBack() {
//     Navigator.pop(context);
//   }

//   List<dynamic> users = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // title: Text(
//         //   "View Doctors",
//         //   style: TextStyle(color: Colors.white),
//         // ),
//         leading: IconButton(
//           onPressed: onBack,
//           icon: Icon(Icons.arrow_back_ios),
//           color: Colors.white,
//         ),
        
//         backgroundColor: Color(0xFFFF5B5B),
//         centerTitle: false,
//       ),
//       body: Stack(
//         children: [
//           ListView.builder(
//             itemCount: users.length,
//             itemBuilder: ((context, index) {
//               final user = users[index];
//               final name = user['name']['first'];
//               final email = user['email'];
//               final imageUrl = user['picture']['thumbnail'];
//               return ListTile(
//                 leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(100),
//                     child: Image.network(imageUrl)),
//                 title: Text(name),
//                 subtitle: Text(email),
//               );
//             }),
//           ),
//           Positioned(
//             bottom: 30,
//             left: 20,
//             right: 20,
//             child: ElevatedButton(
//               onPressed: fetchUsers,
//               child: Text("View Doctors"),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xFFFF5B5B).withOpacity(0.8),
//                 foregroundColor: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 padding: const EdgeInsets.symmetric(vertical: 15.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void fetchUsers() async {
//     print('FetchUsers called');
//     const url = 'https://randomuser.me/api/?results=100';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final body = response.body;
//     final json = jsonDecode(body);

//     setState(() {
//       users = json['results'];
//     });
//     print('fetchUser Completed');
//   }
// }

// // The code below fetches data from an api, I want the items to be clickable that leads to a chat screen

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'chat_screen.dart'; // Import the ChatScreen

class ViewDoctors extends StatefulWidget {
  const ViewDoctors({super.key});

  @override
  State<ViewDoctors> createState() => _ViewDoctorsState();
}

class _ViewDoctorsState extends State<ViewDoctors> {
  void onBack() {
    Navigator.pop(context);
  }

  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: onBack,
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFFFF5B5B),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: users.length,
            itemBuilder: ((context, index) {
              final user = users[index];
              final name = user['name']['first'];
              final email = user['email'];
              final imageUrl = user['picture']['thumbnail'];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(doctor: user),
                    ),
                  );
                },
                child: ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(imageUrl)),
                  title: Text(name),
                  subtitle: Text(email),
                ),
              );
            }),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: fetchUsers,
              child: const Text("View Doctors"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF5B5B).withOpacity(0.8),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

//   void fetchUsers() async {
//     print('FetchUsers called');
//     const url = 'https://randomuser.me/api/?results=100';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final body = response.body;
//     final json = jsonDecode(body);

//     setState(() {
//       users = json['results'];
//     });
//     print('fetchUser Completed');
//   }
// }


void fetchUsers() async {
  print('FetchUsers called');
  const url = 'https://randomuser.me/api/?results=100';
  final uri = Uri.parse(url);
  try {
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final body = response.body;
      final json = jsonDecode(body);

      setState(() {
        users = json['results'];
      });
      print('fetchUser Completed');
    } else {
      print('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
}
}
