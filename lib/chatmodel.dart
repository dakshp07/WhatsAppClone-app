import 'package:flutter/cupertino.dart';

class chatModel{
  final String name;
  final String mess;
  final String time;
  final String avatar;

  chatModel({this.name, this.mess, this.time, this.avatar});
}
List<chatModel>data=[
  new chatModel(
    name: "Alex Soul",
    mess:"Flutter is best",
    time: "11:30 AM",
    avatar: "assests/240066.jpg",
  ),
  new chatModel(
    name: "Max",
    mess:"Android is super",
    time: "9:30 AM",
    avatar: "assests/240066.jpg",
  ),
  new chatModel(
    name: "Rachel",
    mess:"See Yaa",
    time: "2:30 AM",
    avatar: "assests/240066.jpg",
  ),
  new chatModel(
    name:"Lana",
    mess:"Tomorrow 10AM",
    time: "8:30 AM",
    avatar: "assests/240066.jpg",
  ),
  new chatModel(
    name: "Lynn",
    mess:"Meet Me Dude ASAP",
    time: "12:30 PM",
    avatar: "assests/240066.jpg",
  ),
  new chatModel(
    name: "Riley",
    mess:"Come to my house",
    time: "1:30 AM",
    avatar: "assests/240066.jpg",
  )
];
