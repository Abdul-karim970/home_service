import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});
  static const name = '/errorPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Error')),
    );
  }
}
