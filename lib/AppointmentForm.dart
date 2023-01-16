import 'package:flutter/material.dart';



class AppointmentForm extends StatefulWidget {
  const AppointmentForm({Key? key}) : super(key: key);

  //final String title;

  @override
  State<AppointmentForm> createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {

  int _activeStepIndex = 0;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pet_name = TextEditingController();
  TextEditingController pet_type = TextEditingController();
  TextEditingController weight = TextEditingController();
  List<Step> stepList() => [

    Step(
        state: _activeStepIndex <= 0 ?StepState.editing: StepState.complete,
        isActive: _activeStepIndex >= 0,
        title:  const Text("Personal"),
        content: Center(
          child: Column(
            children: [
              Text("Personal Information"),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'enter name'
                ),
                controller: name,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'enter email'
                ),
                controller: email,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'enter phone'
                ),
                controller: phone,
              ),
            ],
          ),

        )),
    Step(
        state: _activeStepIndex <= 1 ?StepState.editing: StepState.complete,
        isActive: _activeStepIndex >= 1,
        title:  const Text("Address"),
        content: Center(
          child: Column(
            children: [
              Text("Address"),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'enter address'
                ),
                controller: address,
              ),

            ],
          ),
        )),
    Step(
        state: _activeStepIndex <= 2 ?StepState.editing: StepState.complete,
        isActive: _activeStepIndex >= 2,
        title:  const Text("Pet "),
        content: Center(
            child: Column(
              children: [
                Text("Pet Information"),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'enter pet name'
                  ),
                  controller: pet_name,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'enter pet type'
                  ),
                  controller: pet_type,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'enter weight'
                  ),
                  controller: weight,
                ),
              ],
            )
        )),
    Step(
      state: _activeStepIndex <= 3 ?StepState.editing: StepState.complete,
      isActive: _activeStepIndex >= 3,
      title:  const Text("Confirm"),
      content:  Column(

        children: [
          Text('name: ' + name.text),
          Text('email: ' +email.text),
          Text('phone number: ' +phone.text),
          Text('address: ' +address.text),
          Text('pet name: ' +pet_name.text)
        ],
      ),
    )];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Book Appointment'),
        ),
        body: Stepper(
          type: StepperType.horizontal,
          currentStep: _activeStepIndex,
          steps: stepList(),
          onStepContinue: (){
            if(_activeStepIndex <(stepList().length-1)){
              _activeStepIndex += 1;
            }
            setState((){

            });
          },
          onStepCancel: (){
            if(_activeStepIndex == 0){
              return;
            }
            _activeStepIndex -= 1;
            setState((){

            });
          },
        )
    );
  }
}
