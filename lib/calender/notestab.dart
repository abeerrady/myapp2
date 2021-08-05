import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesTab extends StatefulWidget {
  @override
  _NotesTabState createState() => _NotesTabState();
}

class _NotesTabState extends State<NotesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30 , left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 360,
                  height: 80,
                  color: Colors.yellow[500],
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Your Medication' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black ) ,),
                        Text("Don't Forget it , That's bad" , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 1) ,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 360,
                  height: 80,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Your Medication' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black ) ,),
                        Text('Don\'t Forget it , That\'s bad' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 1) ,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 360,
                  height: 80,
                  color: Colors.redAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Your Medication' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black ) ,),
                        Text('Don\'t Forget it , That\'s bad' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 1) ,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
