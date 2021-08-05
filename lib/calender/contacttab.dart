import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactTab extends StatefulWidget {
  @override
  _ContactTabState createState() => _ContactTabState();
}

class _ContactTabState extends State<ContactTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30 , top: 30),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/image/p1.jpg') , fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text('John Atherton' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 2),),
                    Text('11/10/2020' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 1),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/image/p2.jpg') , fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text(' Mimi Gider' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 2),),
                    Text('11/10/2020' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 1),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/image/p3.jpg') , fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text('Roch Ashely' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 2),),
                    Text('11/10/2020' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 1),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/image/p4.jpg') , fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text('Jessica Nelson' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 2),),
                    Text('11/10/2020' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black , height: 1),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
