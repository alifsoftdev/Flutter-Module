import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/another_screen.dart';
import 'package:provider_example/counter.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter =Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Provider"),actions: [IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Another(),));
      }, icon: Icon(Icons.arrow_forward))],),
      body: Center(
        child: Text(counter.counterValue.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>counter.addCount(),),
    );
  }
}
