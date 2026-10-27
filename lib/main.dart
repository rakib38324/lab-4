import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_4/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // DropdownButton variables
  final List<String> cities = ['Dhaka', 'Kuala Lumpur', 'Singapore', 'Bangkok'];
  String? selectedCity;

  // PopupMenuButton action
  void handleMenuClick(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$value selected')),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Widgets Example',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          PopupMenuButton<String>(
            onSelected: handleMenuClick,
            offset: const Offset(-10, 40),
            color: Colors.white54,
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(value: 'Edit', child: Text('Edit')),
              const PopupMenuItem(value: 'Delete', child: Text('Delete')),
              const PopupMenuItem(value: 'Share', child: Text('Share')),
            ],
          ),
        ],
      ),

      body: Center(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return Screen1();
                    }
                ),
              );
            },
            child: Text("Click Here to Go Screen 1", style: TextStyle(
                fontSize: 20
            ),)
        )
      ],
    )
    ),


    );
  }
}

