import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../services/weather.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String location = 'loading';

  void setWeather() async {
    Weather instance = Weather();
    await instance.getWeather();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'first_startTime': instance.first_startTime,
      'first_probability': instance.first_probability,
      'second_startTime': instance.second_startTime,
    });
  }

  @override
  void initState() {
    super.initState();
    setWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SpinKitRipple(
            color: Colors.white,
            size: 100.0,
          ),
        ));
  }
}
