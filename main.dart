import 'package:bavly/home.dart';
import 'package:bavly/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: const Rootpage(),
    );
  }
}

class Rootpage extends StatefulWidget {
  const Rootpage({super.key});

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int currentepage=0;
  List<Widget> pages=[
    HomePage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Flutter project"),
        ),
      body:  pages[currentepage],
      floatingActionButton: FloatingActionButton(
          onPressed:(){
            debugPrint('Floating Action Button');
          }, 
        child: const Icon(Icons.add),),
      bottomNavigationBar: NavigationBar(destinations:const [
        NavigationDestination(icon:Icon(Icons.home),label: 'Home'),
         NavigationDestination(icon:Icon(Icons.person),label: 'Profile'),],
      onDestinationSelected: (int index){
        setState((){
          currentepage=index;
        });
      },
        selectedIndex: currentepage,
      ),
      );
  }
}