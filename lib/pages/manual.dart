import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0;
  double _value = 0.0;
  int _number = 0;
  int _numbertest = 0;
  int _numberlb = 0;
  int _numberlo = 0;
  int _numberrb = 0;
  int _numberro = 0;


//  changelb(){
////    print("$_number");
//    _numberlb = 9;
//
//  }

  onChanged(double value) {
    setState(() {
      _value = value;
      _counter = value;
      _counter *= 4;
      if(_counter<0.5) _number  = 0;
      if(_counter>=0.5 && _counter<1.5) _number  = 1;
      if(_counter>=1.5 && _counter<2.5) _number = 2;
      if(_counter>=2.5 && _counter<3.5) _number = 3;
      if(_counter>=3.5 && _counter<4.5) _number = 4;
      if(_counter>=4.5 && _counter<5.5) _number = 5;
      if(_counter>=5.5 && _counter<6.5) _number = 6;
      if(_counter>=6.5 && _counter<7.5) _number = 7;
      if(_counter>=7.5 && _counter<8.5) _number = 8;
      if(_counter>=8.5 && _counter<9.5) _number = 9;
      if(_counter>=9.5 && _counter<10.5) _number  = 10;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shapeshifters"),
      ),
      body: Column(
        children: <Widget>[
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Container(
                color: Colors.lightBlue[100],
                margin: EdgeInsets.all(10.0),
                child: FlatButton(
                  onPressed: () {
                      setState(() {
                          _numberlb = _number ;
                          });
                      },
                  padding: EdgeInsets.all(75.0),

                  child: Text(_numberlb.toString(),
                    style: Theme.of(context).textTheme.display2,),

                ),
              ),

              Container(
                color: Colors.lightBlue[100],
                margin: EdgeInsets.all(10.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _numberrb = _number ;
                    });
                  },
                  padding: EdgeInsets.all(75.0),

                  child: Text(_numberrb.toString(),
                    style: Theme.of(context).textTheme.display2,),

                ),
              ),
          ]),


          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.lightBlue[100],
                  margin: EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _numberlo = _number ;
                      });
                    },
                    padding: EdgeInsets.all(75.0),

                    child: Text(_numberlo.toString(),
                      style: Theme.of(context).textTheme.display2,),

                  ),
                ),

                Container(
                  color: Colors.lightBlue[100],
                  margin: EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _numberro = _number ;
                      });
                    },
                    padding: EdgeInsets.all(75.0),

                    child: Text(_numberro.toString(),
                      style: Theme.of(context).textTheme.display2,),

                  ),
                ),


              ]),

//          Text(
//            'You have pushed the button this many times:',
//          ),

          Text(
            '$_number',
            style: Theme.of(context).textTheme.display1,
          ),

              Padding(

                padding: const EdgeInsets.all(10.0),

                child: Container(

                  child: Slider(
                      value: _value,
                      onChanged: onChanged),
                ),
              ),



        ]
      ),






    );
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

  }


}




