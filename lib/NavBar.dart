import 'package:flutter/material.dart';
import 'about.dart';
import 'contact.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 219, 221, 243),
      child: Wrap(

        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              //color: Color.fromARGB(255, 189, 194, 199)
            ),
          ),
          InkWell(
            child: Row(
              children: [
                SizedBox(width: 10,),
                Image.asset("Icons/info.png", width: 50, height: 50,),
                SizedBox(
                  width: 30,
                ),
                Text("About",style: TextStyle(
                  fontSize: 20
                ))
              ],
            ),
            onTap: () =>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const about()),
                )
            },
          ),
          /*InkWell(
            child:  Row(
              children: [
                SizedBox(width: 10,),
                Image.asset("Icons/van.png", width: 50, height: 50,),
                SizedBox(
                  width: 30,
                ),
                Text("Services",style: TextStyle(
                    fontSize: 20
                ))
              ],
            ),
            onTap: () =>{

            },
          ),*/
          InkWell(
            child:  Row(
              children: [
                SizedBox(width: 10,),
                Image.asset("Icons/contact.png", width: 40, height: 40,),
                SizedBox(
                  width: 30,
                ),
                Text("Contact",style: TextStyle(
                    fontSize: 20
                ))
              ],
            ),
            onTap: () =>{
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const contact()),
                )
            },
          ),
        ],
      ),
    );
  }
}
