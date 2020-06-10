import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class callModel{
  final String name;
  final String avatar;
  final String calltimeanddate;
  final Icon videooraudio;
  final  Icon income;

  callModel({this.name,this.avatar,this.calltimeanddate,this.videooraudio,this.income});
}

List<callModel>data=[
  new callModel(
    name: "Git",
    avatar: "assests/240066.jpg",
    calltimeanddate: "5 June, 11:45AM",
    income: new Icon(Icons.call_made,color: Colors.green,),
    videooraudio: Icon(Icons.call,color: Color(0xff25D366),size: 30,),
  ),
  new callModel(
    name: "Opensource",
    avatar: "assests/240066.jpg",
    calltimeanddate: "2 June, 8:45AM",
    income: new Icon(Icons.call_received,color: Colors.red,),
    videooraudio: Icon(Icons.call,color: Color(0xff25D366),size: 30,),
  ),
  new callModel(
    name: "GitHub",
    avatar: "assests/240066.jpg",
    calltimeanddate: "Today, 2PM",
    income: new Icon(Icons.call_made,color: Colors.red,),
    videooraudio: Icon(Icons.call,color: Color(0xff25D366),size: 30,),
  ),
  new callModel(
    name: "GitHub",
    avatar: "assests/240066.jpg",
    calltimeanddate: "Today, 2PM",
    income: new Icon(Icons.call_made,color: Colors.green,),
    videooraudio: Icon(Icons.videocam,color: Color(0xff25D366),size: 30,),
  ),
  new callModel(
    name: "GitHub",
    avatar: "assests/240066.jpg",
    calltimeanddate: "Today, 2PM",
    income: new Icon(Icons.call_made,color: Colors.green,),
    videooraudio: Icon(Icons.videocam,color: Color(0xff25D366),size: 30,),
  ),
];
