import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    data = Map<String, dynamic>.from(
        (ModalRoute.of(context)?.settings.arguments ?? {})
            as Map<dynamic, dynamic>);

    bool nightCondition = DateTime.now().hour > 18 && DateTime.now().hour < 8;

    return Scaffold(
        backgroundColor: nightCondition ? Colors.grey[200] : Colors.grey[900],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data['location'],
                        style: TextStyle(
                          fontSize: 28,
                          letterSpacing: 2,
                          color:
                              !nightCondition ? Colors.grey[200] : Colors.black,
                        ))
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  data['first_startTime'] + '-' + data['second_startTime'],
                  style: TextStyle(
                    fontSize: 45,
                    color:
                        !nightCondition ? Colors.grey[200] : Colors.grey[900],
                  ),
                ),
                const SizedBox(height: 10),
                Icon(
                    data['first_probability'] == 0
                        ? Icons.light_mode
                        : Icons.water_drop,
                    size: 50,
                    color: data['first_probability'] == 0
                        ? Colors.amber
                        : Colors.blue),
                const SizedBox(height: 15),
                Text(data['first_probability'] + '%',
                    style: TextStyle(
                      fontSize: 35,
                      letterSpacing: 2,
                      color:
                          !nightCondition ? Colors.grey[200] : Colors.grey[900],
                    )),
              ],
            ),
          ),
        ));
  }
}
