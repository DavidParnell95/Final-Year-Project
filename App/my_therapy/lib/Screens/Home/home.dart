import 'package:flutter/material.dart';
import 'package:my_therapy/Screens/Analytics/analytics.dart';
import 'package:my_therapy/Screens/Entries/view_entries.dart';
import 'package:my_therapy/Shared/constants.dart';
import 'package:my_therapy/Screens/Entries/add_entry.dart';
import 'package:my_therapy/Services/auth.dart';
import 'package:my_therapy/Shared/constants.dart' as prefix0;
import 'package:toast/toast.dart';

class Home extends StatelessWidget
{
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person, color: buttonText),
            label: Text(
              "Logout",
              style: TextStyle(color: prefix0.buttonText),
            ),
            onPressed: () async{
              await _auth.logOut();
            },
          )
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(10) ,
        child:Center(
          child: Column(
          children: <Widget>[
            SizedBox(height: 40),

            Text(
              "Welcome to MyTherapy",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),

            Row(
              children: <Widget>[
              SizedBox(height: 30),

              //View Entries
              SizedBox(
                height: 200,
                width: 150,

                child: FlatButton.icon(
                color: Colors.lightBlue,
                icon: Icon(Icons.description, color: buttonText),
                label: Text(
                  "View Entries",
                  style: TextStyle(color: buttonText),
                ),

                //Button shape
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),

                onPressed: (){
                  Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (ctxt) => new ViewEntries()));
                  }
                ),
              ),

                //Add Entry
                SizedBox(width: 32.5),
                SizedBox(

                height: 200,
                width: 150,

                child: FlatButton.icon(
                  color: Colors.lightBlue,
                  icon: Icon(Icons.note_add, color: buttonText),
                  label: Text(
                      "Add Entry",
                      style: TextStyle(color: buttonText)
                  ),

                  //Button shape
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                  ),
                  onPressed: (){
                    //Navigate to Add Entry
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (ctxt) => new AddEntry()),
                    );
                  },
                )
            ),
            ],
            ),

            SizedBox(height: 30),

            Row(
              children: <Widget>[
              //Settings
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                width: 150,

                child: FlatButton.icon(
                  color: Colors.lightBlue,
                  icon: Icon(Icons.settings,color: buttonText),
                  label: Text(
                    "\n Settings",
                    style: TextStyle(color: buttonText),
                  ),

                  //Button shape
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)
                  ),
                  onPressed: (){
                    Toast.show(
                      "UNDER CONSTRTUCTION",
                      context,
                      duration: Toast.LENGTH_SHORT,
                      gravity: Toast.BOTTOM
                    );
                  },
                ),
                ),

            //analytics button
            SizedBox(width: 32),
            SizedBox(
              height: 200,
              width: 150,

              child: FlatButton.icon(
                color: Colors.lightBlue,
                icon: Icon(Icons.assessment,color: buttonText),
                label: Text(
                  "\n Analytics",
                  style: TextStyle(color: buttonText),
                ),

                //Button shape
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)
                ),
                onPressed: (){
                  Navigator.push(context, 
                  new MaterialPageRoute(builder: (ctxt) => new Analytics()));
                },
              ),
            ),
            ],),],
        ),
      ),

    ),
    );
  }
}