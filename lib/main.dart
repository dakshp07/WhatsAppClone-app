import 'package:flutter/material.dart';
import 'package:whatsappclone/calls.dart';
import 'chats.dart';
import 'status.dart';
import 'calls.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Color(0xff075E54),
      ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: new Text("WhatsApp",style: TextStyle(fontSize: 20,color: Colors.white),),
              bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.camera_alt)),
                    Tab(text: "CHATS",),
                    Tab(text: "STATUS",),
                    Tab(text: "CALLS",),
                  ],
              ),
              actions: <Widget>[
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                SizedBox(width: 8,),
                PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem<String>(child: Text("New group"), key: Key("new-group"),),
                    PopupMenuItem<String>(child: Text("Configurations"), key: Key( "config"),),
                  ];
                },)
              ],
            ),
            body: TabBarView(
                children: [
                  Icon(Icons.camera_alt),
                  Chats(),
                  Status(),
                  Calls(),
                ]
            ),
            ),
          )
      );
  }
}
