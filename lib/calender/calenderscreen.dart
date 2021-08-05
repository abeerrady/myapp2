import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp2/calender/calendertab.dart';
import 'package:myapp2/calender/contacttab.dart';
import 'package:myapp2/calender/notestab.dart';
import 'package:myapp2/calender/taskstab.dart';

class CalenderScreen extends StatefulWidget {
  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Flutter Book' , style: GoogleFonts.lato(fontSize: 25 , color: Colors.white),),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text :'Calender' , icon: Icon(Icons.calendar_today),),
              Tab(text :'Contacts' , icon: Icon(Icons.contact_phone),),
              Tab(text :'Notes' , icon: Icon(Icons.note),),
              Tab(text :'Tasks' , icon: Icon(Icons.wysiwyg_outlined),),
            ],
          ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          body: TabBarView(
            children: [
              CalenderTab(),
              ContactTab(),
              NotesTab(),
              TasksTab(),
            ],
          ),
        ),
      ),
    );
  }
}
