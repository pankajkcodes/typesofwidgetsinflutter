import 'dart:ui';

import 'package:flutter/material.dart';

class AlertDialogFilterWidget extends StatelessWidget {
  const AlertDialogFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context) {
      // FOR SHOWING DIALOG
      showDialog(
        context: context,
        barrierColor: Colors.green.withOpacity(0.4),
        builder: (BuildContext context) {
          return BackdropFilter(
            filter : ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5
            ),
            child: AlertDialog(
              title: const Text("My title"),
              content: const Text("Message will Appear Here"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK"))
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter Effect"),
      ),
      body: SafeArea(child: Container()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
