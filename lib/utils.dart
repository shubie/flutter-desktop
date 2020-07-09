import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_5.dart';


makeIconButtons(IconData icon) => Container(
  margin: EdgeInsets.all(2),
    decoration: const ShapeDecoration(
        color: Colors.white,
              shape: CircleBorder(),
    ),
    child: IconButton(
        icon: Icon(icon, color: Colors.black54),
        iconSize: 20,
        onPressed: null,
    )
);

makeIconColumnButtons(IconData icon, String title) => Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
    children: [
      makeIconButtons(icon),
      Text(title, style: TextStyle(fontSize: 9, color: Colors.black),)
    ],
  ),
);


makeChatAvatar() => Container(
//    margin: EdgeInsets.all(2),
    height: 30,
    width: 30,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(width: 0, color: Colors.black)),
    child: Image.asset(
      'images/photo1.jpg',
//      width: 50,
//      height: 50,
      fit: BoxFit.fill,
    )
);

makeChatSection() => ListView(
  children: [
    sender("Elwin Shelvin"),
    chatRow("Hey-hey 👋 😎"),
    sender("Kita Chihoko"),
    chatRow("High Everyone"),
    chatRow("Joseph here from california"),
    ChatBubble(
      clipper: ChatBubbleClipper5(type: BubbleType.sendBubble),
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(top: 20),
      elevation: 0,
      backGroundColor: Color(0xffC6E4D9),
      child: Container(
        constraints: BoxConstraints(
        ),
        child: Text(
          "There will also be recording available.",
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
    sender("Gvozden Boskovsky"),
    chatRow("Hi everyone! Gvozden here from California"),
  ],
);

Padding sender(String name) => Padding(
  padding: EdgeInsets.only(left: 50, top: 20),
  child: Text(name, style: TextStyle(fontSize: 11, color: Color(0xffD7D7D7)),),);


Container chatRow(String message) {
  return Container(
    padding: EdgeInsets.only(top: 5),
    child: Row(children: [
      CircleAvatar(
        radius: 18.0,
        backgroundImage: new AssetImage('images/photo1.jpg'),
      ),
      ChatBubble(
        clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(top: 2, left: 10),
        elevation: 0,
        backGroundColor: Color(0xffF2F4F7),
        child: Container(
          constraints: BoxConstraints(
//          maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: Container(
            width: 170,
            child: Text(
              message,
              style: TextStyle(color: Colors.black),
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
            ),
          ),
        ),
      ),
    ],),
  );
}
makePollSection() =>  Container(
  padding: EdgeInsets.only(top: 15, left: 15,  right: 15),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      color:  const Color(0xffb1B4A43)
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 30.0,child: Text("Which platform will be the leader in your", style: TextStyle(fontSize: 12, color: Colors.white),)),
      makeProgressBar(0.3),
      makeProgressText("33% Facebook"),
      makeProgressBar(0.6),
      makeProgressText("62% Facebook"),
      makeProgressBar(0.2),
      makeProgressText("16% Facebook"),
    ],
  ),
);

SizedBox makeProgressBar(double value) => SizedBox(
    height: 2.0,
    child: LinearProgressIndicator(value: value, backgroundColor: Colors.grey,
        valueColor: AlwaysStoppedAnimation(Colors.white))
);

Padding makeProgressText(String label) => Padding(
    padding: EdgeInsets.only(bottom: 15, top: 1),
    child: Text(label, style: TextStyle(fontSize: 12, color: Colors.white),));

ListView makeBubbles() => ListView(
  children: [
    Bubble(
      margin: BubbleEdges.only(top: 10),
      color: Color.fromRGBO(225, 255, 199, 1.0),
      child: Text('Hello, World!', textAlign: TextAlign.right),
    ),
    Bubble(
      margin: BubbleEdges.only(top: 10),
      child: Text('Hi, developer!'),
    ),
  ],
);


MaterialButton longButtons(String title, Function fun,
    {Color color: const Color(0xfff063057), Color textColor: Colors.white}) {
  return MaterialButton(
    onPressed: fun,
    textColor: textColor,
    color: color,
    child: SizedBox(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    ),
    height: 45,
    minWidth: 600,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );
}

RaisedButton finishButton(String label, Function fun) {
  return RaisedButton(
    onPressed: fun,
    textColor: Colors.white,
    color: Color.fromRGBO(50, 62, 72, 1.0),
    padding: const EdgeInsets.all(19.0),
    child: Text(label, style: TextStyle(fontSize: 11, color: Colors.white)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  );
}


Align footerBox() {
  return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(Icons.alternate_email, size: 18, color: Colors.grey),
              ),
              Padding(
                padding: const  EdgeInsets.only(right: 10.0),
                child: Icon(Icons.filter_none, size: 18, color: Colors.grey),
              ),
              Padding(
                padding: const  EdgeInsets.only(right: 10.0),
                child: Icon(Icons.attachment, size: 18, color: Colors.grey),
              ),
            ],),
          TextFormField(
//                    maxLines: 2,
              autofocus: false,
              decoration: InputDecoration(
                hintText: ("Write your message"),
                hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none
                    ,borderRadius: BorderRadius.circular(0.0)),
              )
          ),
        ],
      )
  );
}