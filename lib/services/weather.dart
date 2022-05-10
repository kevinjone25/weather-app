import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:lab_2/models/weather_response.dart';

class Weather {
  String firstStartTime = '';
  String firstEndTime = '';
  String firstProbability = '';
  String secondStartTime = '';

  String location = '';
  Future<void> getWeather() async {
    try {
      Response response = await get(Uri.parse(
          "https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-005?Authorization=[Your Auth]&format=JSON&locationName=%E4%B8%AD%E5%A3%A2%E5%8D%80&elementName=PoP6h"));
      WeatherResponse weatherResponse =
          WeatherResponse.fromJson(json.decode(response.body));

      location = weatherResponse.records.locations[0].location[0].locationName;
      firstStartTime = weatherResponse
          .records.locations[0].location[0].weatherElement[0].time[0].startTime
          .substring(11, 16);
      firstProbability = weatherResponse.records.locations[0].location[0]
          .weatherElement[0].time[0].elementValue[0].value;
      secondStartTime = weatherResponse
          .records.locations[0].location[0].weatherElement[0].time[1].startTime
          .substring(11, 16);
    } catch (e) {
      debugPrint('Error: $e');
      location = '無法取得資料';
    }
  }
}
