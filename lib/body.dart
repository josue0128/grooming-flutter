import 'package:flutter/material.dart';
import 'AppointmentForm.dart';
class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(

      children: [
        Container(
          child: Center(
            child: Column(
              children:[
                Image.asset("Icons/logo.png"),
                SizedBox(height: 10,),
                Row(
                  children: [

                    Container(
                      width: size.width * 0.9,
                      padding: EdgeInsets.only(left: 90,top: 5,bottom: 30),
                      child:
                      Text("Fluffy Spa", style: TextStyle(
                        fontFamily: 'Reborn',
                        fontSize: 40,
                      ),),

                    )

                  ],

                ),
                Center(

                  child: Column(

                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          onPrimary: Colors.white,
                          shadowColor: Colors.blueGrey,
                          elevation: 3,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: Size(300, 50), //////// HERE
                          //padding: EdgeInsets.only(top: 20),
                        ),
                        /*style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),

                        )

                  ) ,

                        ),*/
                          onPressed:(){
                            //print('Book Appointment');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const AppointmentForm()),
                            );
                          },
                          child:
                               Text('Book Appointment',style: TextStyle(
                                 fontSize: 20,

                               ),),
                      )
                    ],
                  ),
                )
              ],
            )


          ),
          //height: size.height * 0.5,
        )
      ],
    );
  }
}
