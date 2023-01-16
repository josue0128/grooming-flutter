import 'package:flutter/material.dart';
class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Text('CONTACT US', style: TextStyle(
                fontSize: 40,
                fontFamily: 'Reborn',
              ),
              ),
              Text('Experts in dog grooming right at your Doorstep.')
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 20),
           child:
           Image.asset("Icons/van2.png"),
           //  Image.asset("Icons/van2.png")
          ),
         Padding(
            padding: EdgeInsets.only(top: 20,left: 10),
         child: Column(
           children: [
             RichText(text: TextSpan(
               text: 'Should you have any further questions, we would be more than'
                   'happy to answer them for you!\n',
               style: TextStyle( color: Colors.black, ),
             )),
             Divider(
               color: Colors.black,
             ),

           ],
         )
             ),
          Column(
            children: [


                Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset("Icons/call.png", width: 50, height: 50,),
                    SizedBox(
                      width: 30,
                    ),
                    Text("1 + 4792256267",style: TextStyle(
                        fontSize: 20
                    ))
                  ],
                ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset("Icons/email.png", width: 50, height: 50,),
                  SizedBox(
                    width: 30,
                  ),
                  Text("fluffyspa@gmail.com",style: TextStyle(
                      fontSize: 20
                  ))
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset("Icons/find.gif", width: 50, height: 50,),
                  SizedBox(
                    width: 30,
                  ),
                  Text("123 South Gate, LA",style: TextStyle(
                      fontSize: 20
                  ))
                ],
              ),

            ],
          )


        ],
      ),
    );
  }
}
