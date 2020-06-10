import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
          child: Icon(Icons.brush,color: Colors.white,),
          backgroundColor: Colors.grey,
          onPressed: (){}
      ),
      body: ListView.builder(
        itemCount: 6,
          itemBuilder: (context,int)=>new Column(
            children: <Widget>[
              new Divider(
                height: 10,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  backgroundImage: new AssetImage("assests/240066.jpg"),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Alexa",style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
                subtitle: new Container(
                  padding: EdgeInsets.only(top: 5),
                  child: new Text("Today, 8:30 AM",style: TextStyle(fontSize: 15,color: Colors.grey),),
                )
              )
            ],
          )
      ),
    );
  }
}
