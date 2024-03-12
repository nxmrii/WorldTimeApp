import 'package:flutter/material.dart';
import 'package:worldtimerapp/service/WorldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen ({super.key});

  @override
  State<LoadingScreen> createState() => _State();
}

class _State extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Muscat', flag: 'muscat.png', url: 'Asia/Muscat');
    await instance.getTime();
  }
  @override
  void initState(){
    super.initState();
    setupWorldTime();
  }

}
