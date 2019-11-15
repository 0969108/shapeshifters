import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async{
    //simulate network request name
    await Future.delayed(Duration(seconds: 2), () {
      print('\n scrub \n');
    });
    Future.delayed(Duration(seconds: 1), () {
      print('\n scrub likes pizza \n');
    });

    print ('\n blablabla \n');
  }


  int counter = 0;
  @override
  void initState() {
    super.initState();
    getData();
    print('\n iniState funtion ran\n');
  }

  @override
  Widget build(BuildContext context) {
    print('\n build funtion ran \n');

    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),

      body: RaisedButton(
        onPressed: (){
          setState((){
            counter += 1;
          });
      },
        child: Text('counter is $counter'),
      )
    );
  }
}
