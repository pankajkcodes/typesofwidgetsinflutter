import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Widget"),),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1652494040012-573d5431f4d0",
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  Text(
                    "Stack Overview",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Hello World!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
            /*
           Container(
              height: 450,
              width: 450,
              color: Colors.red,
              child: const Text("FIRST STACK"),
            ),
            Container(
              height: 350,
              width: 350,
              color: Colors.yellow,
              child: const Text("SECOND STACK"),
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.green,
              child: const Text("THIRD STACK"),
            ),

            */
          ],
        ),
      ),
    );

    /// SAFE AREA IS USED FOR SCREEN BELOW APPBAR UPPER OF BOTTOM NAVIGATION BAR
  }
}
