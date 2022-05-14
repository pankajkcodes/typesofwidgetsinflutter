import 'package:flutter/material.dart';
import 'package:typesofwidgetsinflutter/widgets/filter_widget.dart';
import 'package:typesofwidgetsinflutter/widgets/list_view_widget.dart';
import 'package:typesofwidgetsinflutter/widgets/stack_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Types Of Widget In Flutter "),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

            SizedBox(
              height: 70,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const StackWidget()),
                    );
                  },
                  child: const Text("Stack Widget")),
            ),
            SizedBox(
              height: 70,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListViewWidget()),
                    );
                  },
                  child: const Text("ListView Widget")),
            ),
            SizedBox(
              height: 70,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AlertDialogFilterWidget()),
                    );
                  },
                  child: const Text("Dialog And Filter Widget")),
            ),
        ],
      ),
          )),
    );
  }
}
