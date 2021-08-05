import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksTab extends StatefulWidget {
  @override
  _TasksTabState createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
  bool js = false;
  bool cSharp = false;
  bool python = false;
  bool item = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(value: js, onChanged: (value){
                  setState(() {
                    js=value;
                  });
                }),
                Text("Take Out the Calender" , style: GoogleFonts.lato(fontSize: 18 , color: Colors.black),),
              ],
            ),

            Row(
              children: [
                Checkbox(value: cSharp, onChanged: (value){
                  setState(() {
                    cSharp=value;
                  });
                }),
                Text("Take Your Medicine" , style: GoogleFonts.lato(fontSize: 18 , color: Colors.black),),
              ],
            ),

            Row(
              children: [
                Checkbox(value: python, onChanged: (value){
                  setState(() {
                    python=value;
                  });
                }),
                Text(" Your Friend birthday Today" , style: GoogleFonts.lato(fontSize: 18 , color: Colors.black),),
              ],
            ),

            Row(
              children: [
                Checkbox(value: item, onChanged: (value){
                  setState(() {
                    item=value;
                  });
                }),
                Text("Wash The Car" , style: GoogleFonts.lato(fontSize: 18 , color: Colors.black),),
              ],
            ),
            SizedBox(height: 20,),
            RaisedButton(
                child: Text("Add New Task"),
                onPressed: (){
                  // var ad = AlertDialog(
                  //   title: Text("Thank For Apply"),
                  //   content: Text("") ,
                  // );
                  //  showDialog(context: context, child:ad);
                }),
          ],
        ),
      ) ,
    );
  }
}
