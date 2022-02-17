import 'package:flutter/material.dart';
import 'chatmodel.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
          child: Icon(Icons.message,color: Colors.white,),
          backgroundColor: Color(0xff25D366),
          onPressed: (){}
      ),
      body:ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i) =>
        new Column(
          children: <Widget>[
            new Divider(
              height: 10,
            ),
            new ListTile(
              leading: GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new AssetImage(data[i].avatar),
                ),
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(title: Text(data[i].name), content: Image.asset(data[i].avatar, height: 200, width: 120, fit: BoxFit.cover,), contentPadding: EdgeInsets.all(16),);
                  });
                },
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(data[i].name, style: TextStyle(fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),),
                  new Text(data[i].time,style: TextStyle(fontSize: 14,color: Colors.grey),)
                ],
              ),
              subtitle: new Container(
                padding: EdgeInsets.only(top: 5),
                child: new Text(data[i].mess,style: TextStyle(fontSize: 15,color: Colors.grey),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

