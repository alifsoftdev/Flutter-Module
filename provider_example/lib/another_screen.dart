import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/counter.dart';

class Another extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter =Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Provider"),leading: IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back)),),
      body: Center(
        child: Text(counter.counterValue.toString()),
      ),
    );
  }
}