import 'package:bavly/flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Center(child: ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
        return const LearnFlutter();
      }),);
    }, child: Text('learn flutter'),),);
  }
}