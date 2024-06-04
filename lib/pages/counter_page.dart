import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/providers/counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    super.key,
  });

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {

    final provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("exemplo de contador",
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(children: [
        Text(provider?.state.value.toString() ?? '0'),
        IconButton(
            onPressed: () {
              setState((){
                CounterProvider.of(context)?.state.inc();
                print(CounterProvider.of(context)?.state.value);
              });
      
            },
            icon: Icon(Icons.add)),
        IconButton(
            onPressed: () {
              setState((){
                provider?.state.dec();
                print(CounterProvider.of(context)?.state.value);
              });
            },
            icon: Icon(Icons.remove)),
      ]),
    );
  }
}
