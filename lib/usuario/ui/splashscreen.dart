import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meuru/usuario/ui/login.dart';

class Splashscreen extends StatefulWidget{
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 2)).then((_){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox.expand(
        child: Image.asset("assets/splashscreen2.png",
          fit: BoxFit.fitHeight,
        )
    );
  }

}