import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/Provider/count_provider.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: Consumer<CountProvider>(builder: (context, value, child) {
            
            return Text(
              value.valu.toString(),
            );
          })),
          Center(
            child: Consumer<CountProvider>(builder: (context, value, child) {
            
            return Slider(
value: value.valu.toDouble(),
onChanged: (val) {	
  value.setValue(val);
},
);

          }),
          )
        ],
      ),

// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
