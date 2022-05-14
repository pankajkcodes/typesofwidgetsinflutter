import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    List listData = [
      "Item 1",
      "Item 2",
      "Item 3",
      "Item 4",
      "Item 5",
      "Multiple Item 1",
      "Multiple Item 2",
      "Multiple Item 3",

    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Types of listview")),
      body: SafeArea(
        child: ListView.builder(
            itemCount: listData.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text(listData[index].toString().split(" ")[0][0]),
                ),
                title: Text(listData[index]),
              );
            }),
      ),
    );
  }
}

/// List ViewBuilder is Used For Dynamic Data
/// And List view separator is user for _____ of separator line
/// This ListViewWidget Only Use For Fix Data Value
class SimpleListViewWidget extends StatelessWidget {
  const SimpleListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              child: Text("I"),
            ),
            title: Text("Item 1"),
            subtitle: Text("Sub Item 1"),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("I"),
            ),
            title: Text("Item 2"),
            subtitle: Text("Sub Item 2"),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text("I"),
            ),
            title: Text("Item 3"),
            subtitle: Text("Sub Item 3"),
          ),

        ],
      )),
    );
  }
}
