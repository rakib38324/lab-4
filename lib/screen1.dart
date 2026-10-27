import 'package:flutter/material.dart';
import 'package:lab_4/screen2.dart';


class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 1'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Screen 1', style: TextStyle(
                fontSize: 30
            ),),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return Screen2();
                      })
                  );
                },
                child: Text("Click Here to Go Screen 2", style: TextStyle(fontSize: 20),)
            )
          ],
        ),
      ),
    );
  }
}

