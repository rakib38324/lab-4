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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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
        title: Text('Button Widget'),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              FilledButton(
                onPressed: () {},
                child: const Text('I am Filled Button'),
              ),
              FilledButton.tonal(
                onPressed: () {},
                child: const Text('I am Filled tonal Button'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('I am Outlined Button'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('I am Text Button'),
              ),
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.share),
              ),

            ],
          )
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.person),
      ),

      // Change button position
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // Other options:
      // .centerFloat, .startFloat, .centerDocked, .endDocked, etc.
    );
  }
}


