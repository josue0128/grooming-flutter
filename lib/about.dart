import 'package:flutter/material.dart';
class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Fluffy Spa'),
      ),
      body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

                Text('Who We Are', style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Reborn',
                ),
                ),

      Padding(
        padding:  EdgeInsets.only(left: 19.0),
        child:
              RichText(
                text: TextSpan(
                  text: 'We Are ',
                  style: TextStyle(fontSize: 20, color: Colors.black, ),
                  children: const <TextSpan>[
                    TextSpan(text: 'Mobile ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Pet Groomers In California\n\n'),
                    TextSpan(text: 'Our Spa on wheels comes to your doorstep to take '
                        'your pet on a magical journey of relaxation and love. Our '
                        'promise to you is to create a stress free environment in '
                        'which we will pamper your pet and their needs.\n\n'
                    ),
                    TextSpan(text: 'We understand every pet is different and therefore '
                        'needs different attention: with our highly trained therapist we give '
                        'each pet a unique experience with us.\n\n'
                    ),
                    TextSpan(text: "We are proud to be California's leading mobile grooming "
                        "company and constantly strive to be a bigger and better. "
                        "No matter the size of the pet or length of the treatment, our "
                        "team puts in their full commitment and dedication to ensure your pet "
                        "comes home feeling refreshed and relaxed. There's no better "
                        "place for your fur child to be groomed than Fluffy Spa and we pride "
                        "ourselves on our high standards."),
                  ],
                ),
              ),
              ),
            ],
          ),
    );

  }
}
