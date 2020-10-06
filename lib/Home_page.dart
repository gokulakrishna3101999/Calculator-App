import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget
{
  @override
 State createState() => new HomePageState(); 
}

class HomePageState extends State<HomePage>{

  var num1=0,num2=0,result=0;

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void add()
  {
   setState(() {
     num1 = int.parse(t1.text);
     num2 = int.parse(t2.text);
     result = num1 + num2;
   });
  }

  void sub()
  {
   setState(() {
     num1 = int.parse(t1.text);
     num2 = int.parse(t2.text);
     result = num1 - num2;
   });
  }

  void mul()
  {
   setState(() {
     num1 = int.parse(t1.text);
     num2 = int.parse(t2.text);
     result = num1 * num2;
   });
  }

  void div()
  {
   setState(() {
     num1 = int.parse(t1.text);
     num2 = int.parse(t2.text);
     result = num1 ~/ num2;
   });
  }

  void clear()
  {
    setState(() {
      t1.text = "";
      t2.text = "";
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Calculator"),),
      resizeToAvoidBottomPadding: false,
      body: new ListView
      (
        children: <Widget>
        [
          Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(30.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(hintText: "enter the first number"),
                    controller: t1,
                  ),
                  
                   new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(hintText: "enter the Second number"),
                    controller: t2,
                   ),

                    new Padding(
              padding: const EdgeInsets.only(top: 10.0),
              ),

                 new Center(
                 child : new Text("Your Result : $result"  , 
                 style: new TextStyle(color: Colors.purple,
                 fontSize: 20 , 
                 fontWeight: FontWeight.bold),
                 ),
                 ),
                 new Padding(
              padding: const EdgeInsets.only(top: 20.0),
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: Text("ADD" ,  style: new TextStyle(color: Colors.white)),
                    onPressed: add,
                    color: Colors.purple
                  ),

                   new MaterialButton(
                    child: Text("SUB" ,  style: new TextStyle(color: Colors.white)),
                    onPressed: sub,
                    color: Colors.purple
                  ),
                ],
              ),

              
                  new Padding(
              padding: const EdgeInsets.only(top: 10.0),
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: Text("MULTIPLY", style: new TextStyle(color: Colors.white),),
                    color: Colors.purple,
                    onPressed: mul,
                  ),

                   new MaterialButton(
                    child: Text("DIVIDE" ,  style: new TextStyle(color: Colors.white)),
                    onPressed: div,
                    color: Colors.purple
                  ),
                ],
              ),

               new Padding(
              padding: const EdgeInsets.only(top: 10.0),
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                     new MaterialButton(
                    child: Text("CLEAR" ,  style: new TextStyle(color: Colors.white)),
                    onPressed: clear,
                    color: Colors.purple
                  ),
                ],
              ),
              
                ],
              )
            ),
          ],
        ),
        ],
      ),
    );
  }
}