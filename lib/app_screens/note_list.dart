import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/note_detail.dart';

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note"),
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Fabddkmskdm');
          navigateToNoteDetail("Add Note");
        },
        tooltip: 'Add Note',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getListView() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Icon(Icons.keyboard_arrow_right),
                ),
                title: Text("Dummy  title"),
                subtitle: Text("Dummy  Date"),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
                onTap: () {
                  debugPrint("Clicked");
                  navigateToNoteDetail("Edit Note");
                },
              ));
        });
  }

  void navigateToNoteDetail(String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetail(title);
    }));
  }
}
