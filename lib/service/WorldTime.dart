import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{
  String location="";
  String time="";
  String flag="";
  String url="";
  bool isDayTime= true;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async{
    try{
      Response response =
      await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      print(response.statusCode);
      String dateTime = data['utc_datetime'];
      print("The Date time now $dateTime");

      String offset = data['utc_offset'].substring(1,3);
      print("The Offset now $offset");

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      print(now);

      time = DateFormat.jm().format(now);
      print(time);

    }catch(e){  //catch exception
      print("Caught Error: $e");

    }
  }


}