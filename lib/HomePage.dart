import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Bottom Sheet"
        ),
      ),
      body: Center(
        child:InkWell(
          child: Text("show bottom sheet"),
          onTap: (){
            scaffoldKey.currentState?.showBottomSheet((context){
              return Container(
                width: double.infinity,
                height: 250,
                color: Colors.indigo,
                child: Center(
                  child: Text("Show bottom sheet"),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
