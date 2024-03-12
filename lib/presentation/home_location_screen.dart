import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeLocationScreen extends StatefulWidget {
  const HomeLocationScreen({super.key});

  @override
  State<HomeLocationScreen> createState() => _HomeLocationScreenState();
}

class _HomeLocationScreenState extends State<HomeLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image:DecorationImage(
                  image: AssetImage('assets/morning.jpg'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                    print("clicked");
                    Navigator.of(context,rootNavigator: true).pushNamed("/choose_location");
                    },
                    icon: const Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    label: const Text("Edit Location",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                    ),
                ),
                SizedBox(height: 30,),
                Text("Muscat",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2.0),
                ),
                SizedBox(height: 40,),
                Text("08:21 PM",
                style: TextStyle(
                  fontSize: 66,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
