import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Icon(Icons.add),
            ),
            Text(
              "$_count",
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),
            ElevatedButton(
              onPressed: _decrementCounter,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
