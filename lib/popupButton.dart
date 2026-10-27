import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DropdownButton Example
            DropdownButton<String>(
              hint: const Text('Select a City'),
              value: selectedCity,
              icon: const Icon(Icons.arrow_drop_down),
              style: const TextStyle(color: Colors.deepPurple, fontSize: 16),
              items: cities.map((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedCity = newValue!;
                });
              },
            ),

            const SizedBox(height: 40),

            // OverflowBar Example
            OverflowBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Saved Successfully')),
                    );
                  },
                  child: const Text('Save'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Action Cancelled')),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

