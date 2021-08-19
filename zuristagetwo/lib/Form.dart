import 'package:flutter/material.dart';
import 'package:zuristagetwo/Screen_two.dart';
import 'globals.dart';

class Forms extends StatefulWidget {
  @override
  _Form createState() => _Form();
}

class _Form extends State<Forms> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final trackController = TextEditingController();
  final hobbiesController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    trackController.dispose();
    hobbiesController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/HNG.png'),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  hintText: 'Hafsah Anibaba',
                  contentPadding: EdgeInsets.all(30),
                  fillColor: Colors.white10,
                ),
                controller: nameController,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Weeks',
                  hintText: '0',
                    contentPadding: EdgeInsets.all(30),
                    fillColor: Colors.white10,
                ),
                controller: ageController,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Track',
                  hintText: 'Mobile',
                    contentPadding: EdgeInsets.all(30),
                    fillColor: Colors.white10,
                ),
                controller: trackController,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Hobbies',
                  hintText: 'Reading',
                    contentPadding: EdgeInsets.all(30),
                    fillColor: Colors.white10,
                ),
                controller: hobbiesController,
              ),
              ElevatedButton(
                  onPressed: () {
                    details.add(nameController.text);
                    details.add(ageController.text);
                    details.add(trackController.text);
                    details.add(hobbiesController.text);
                    _display(context);
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}

void _display(BuildContext context) {
  List send = details;
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ScreenTwo(
                text: send,
              )));
}
