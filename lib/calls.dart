import 'package:flutter/material.dart';
import 'callmodel.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        child:
          new Icon(Icons.add_call,color: Colors.white,),
          onPressed: (){},
        backgroundColor: Color(0xff25D366),
      ),
      body: ListView.builder(
        itemCount: data.length,
          itemBuilder: (context,i)=>new Column(
            children: <Widget>[
              new Divider(
                height: 10,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  backgroundImage: new AssetImage(data[i].avatar),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(data[i].name,style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),),
                    data[i].videooraudio,
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5),
                  child:
                    new Text(data[i].calltimeanddate,style: TextStyle(fontSize: 14,color: Colors.grey),),
                ),
              )
            ],
          )
      )
    );
  }
}
