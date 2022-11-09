import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSwitch=false;
  bool? ischeck=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios),
      ),
        actions: [IconButton(onPressed: (){debugPrint('Actions');
          },  icon:const Icon( Icons.info_outline,
        ),
        ),
        ],
    ),
    body:SingleChildScrollView(
    child:Column(children: [Image.asset('images/download.jpg'),
    const SizedBox(height: 10,width: 50,),
    const Divider(color: Colors.black,),
      Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          color: Colors.lightGreen,
      child: const Center(child: const Text('this is text ',style:TextStyle(color: Colors.green)),)),
      ElevatedButton(style: ElevatedButton.styleFrom(primary: isSwitch?Colors.cyan: Colors.green), onPressed: (){debugPrint('Elevated Button');}, child: const Text('Elevated Button'),),
      OutlinedButton(onPressed: (){debugPrint('Outlined Button');}, child: const Text('Outlined Button'),),
      TextButton(onPressed: (){debugPrint('Text Button');}, child: const Text('Text  Button'),),
      GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: (){
          debugPrint('This is the row');
        },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
        Icon(Icons.local_fire_department,color: Colors.deepOrangeAccent),
        Text('row wedget'),
        Icon(Icons.local_fire_department,color: Colors.deepOrangeAccent),
      ],
      ),
      ),
      Switch(value: isSwitch, onChanged: (bool newBool){
        setState((){isSwitch=newBool;});
        } ),
      Checkbox(value: ischeck, onChanged: (bool? newBool){
        setState(() {
          ischeck=newBool;
        });
      }),
      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoIs8dxcRSOu9hX3SBvjZVtI82q5XOwP1o9Q&usqp=CAU')

    ])));
  }
}