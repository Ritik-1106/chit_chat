import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.home, color: Colors.white,),
        title: Text("chate kro"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert), color: Colors.white)
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.blue, child: Icon(Icons.add, color: Colors.white)),
      ),
    );
  }
}