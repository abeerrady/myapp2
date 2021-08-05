import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalenderTab extends StatefulWidget {
  @override
  _CalenderTabState createState() => _CalenderTabState();
}

class _CalenderTabState extends State<CalenderTab> {
  DateTime selectedDate = DateTime.now() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // backgroundColor: Colors.blueGrey[200],

      body: Center(
        child: Column(

          children: [
            InkWell(
              onTap: (){_selectDate();},
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("open calendar" , style: GoogleFonts.aBeeZee(fontSize: 30 , color: Colors.black),)),
              ),
            ),
            SizedBox(height: 100,),
            InkWell(
              onTap: (){_selectTime();},
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("open clock" , style: GoogleFonts.aBeeZee(fontSize: 30 , color: Colors.black),)),
              ),
            ),
            // CalendarDatePicker(
            //     initialDate: selectedDate, firstDate: DateTime(2018,01),
            //     lastDate: DateTime(2025,12), onDateChanged: (date){
            //   setState(() {
            //     selectedDate = date ;
            //   });
            //     })
          ],
        )
      ),

    );
  }
  _selectDate(){
   showDatePicker(context: context,
       initialDate: DateTime.now(),
       firstDate: DateTime(2018, 01),
       lastDate: DateTime(2025, 12)
   );
  }

  _selectTime(){
    showTimePicker(context: context, initialTime: TimeOfDay.now(), builder: (context, child){
      return Directionality(textDirection: TextDirection.ltr, child: child);
    });
  }

}
