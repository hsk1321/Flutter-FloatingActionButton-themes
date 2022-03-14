import 'package:app_themes/utils/expandablefab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  static const _actionTitles = ['Go to home', 'Go to Twitter', 'Show news'];
  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test")),
      body: SingleChildScrollView(),
      floatingActionButton: ExpandableFab(
        distance: 100.0,
        children: [
          ActionButton(
            onPressed: () => _showAction(context, 0),
            icon: const FaIcon(
              FontAwesomeIcons.home,
              color: Colors.white,
            ),
          ),
          ActionButton(
            onPressed: () => _showAction(context, 1),
            icon: const FaIcon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
            ),
          ),
          ActionButton(
            onPressed: () => _showAction(context, 2),
            icon: const FaIcon(
              FontAwesomeIcons.newspaper,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
