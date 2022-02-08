import 'package:flutter/material.dart';
import 'package:flutter_state/controller/controller_state.dart';

import 'controller/icontroller_state.dart';
import 'controller/states/no_results_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CLiente(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CLiente extends StatefulWidget {
  const CLiente({Key? key}) : super(key: key);

  @override
  State<CLiente> createState() => _CLienteState();
}

class _CLienteState extends State<CLiente> {
  final ControllerState _controller = ControllerState();
  Future<void> _changeState() async {
    await _controller.nextState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: _changeState,
                  child: const Text('Load names'),
                ),
                const SizedBox(height: 20),
                StreamBuilder<IControllerState>(
                  initialData: NoResultsState(),
                  stream: _controller.outState,
                  builder: (context, snapshot) => snapshot.data!.render(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
