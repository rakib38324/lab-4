import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button Widget'),
      ),
      body: CityDropdown()

    );
  }
}

class CityDropdown extends StatefulWidget {
  const CityDropdown({super.key});

  @override
  State<CityDropdown> createState() => _CityDropdownState();
}

class _CityDropdownState extends State<CityDropdown> {
  // Step 1: Define a list of cities
  final List<String> cities = ['Dhaka', 'Kuala Lumpur', 'Singapore', 'Bangkok'];

  // Step 2: Define a variable to hold the selected value
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
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
    );
  }
}


