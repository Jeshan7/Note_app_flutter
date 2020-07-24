import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoteDetail extends StatefulWidget {
  String appBarTitle;

  NoteDetail(this.appBarTitle);

  @override
  State<StatefulWidget> createState() {
    return NoteDetailState(this.appBarTitle);
  }
}

class NoteDetailState extends State<NoteDetail> {
  String appBarTitle;

  NoteDetailState(this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
        ),
        body: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
                child: TextField(
                  onChanged: (value) {
                    debugPrint("typed");
                  },
                  decoration: InputDecoration(labelText: "Title"),
                )),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
              child: TextField(
                onChanged: (value) {
                  debugPrint("hello");
                },
                decoration: InputDecoration(
                  labelText: "Description",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100.0, top: 40.0),
              child: Row(
                children: <Widget>[
//                  Expanded(
                  RaisedButton(
                    //                    padding: EdgeInsets.only(left: 20.0, right: 20.0),

                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      "Save",
                      textScaleFactor: 1.2,
                    ),
                    onPressed: () {
                      setState(() {
                        debugPrint("save button clicked");
                      });
                    },
                  ),
//                  ),
//                  Expanded(
                  Container(
                    width: 20.0,
                  ),
                  RaisedButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text(
                      "Delete",
                      textScaleFactor: 1.2,
                    ),
                    onPressed: () {
                      setState(() {
                        debugPrint("delete button clicked");
                      });
                    },
                  ),
//                  )
                ],
              ),
            )
          ],
        ));
  }
}
