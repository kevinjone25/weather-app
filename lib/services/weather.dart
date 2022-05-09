import 'package:http/http.dart';
import 'dart:convert';

class Weather {
  String first_startTime = '';
  String first_endTime = '';
  String first_probability = '';
  String second_startTime = '';

  String location = '';
  Future<void> getWeather() async {
    try {
      Response response = await get(Uri.parse(
          "https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-D0047-005?Authorization=[Your Auth]&format=JSON&locationName=%E4%B8%AD%E5%A3%A2%E5%8D%80&elementName=PoP6h"));
      Map data = json.decode(response.body);

      location = data['records']['locations'][0]['location'][0]['locationName'];
      first_startTime = data['records']['locations'][0]['location'][0]
              ['weatherElement'][0]['time'][0]['startTime']
          .substring(11, 16);
      first_probability = data['records']['locations'][0]['location'][0]
          ['weatherElement'][0]['time'][0]['elementValue'][0]['value'];
      second_startTime = data['records']['locations'][0]['location'][0]
              ['weatherElement'][0]['time'][1]['startTime']
          .substring(11, 16);
    } catch (e) {
      print('Error: $e');
      location = '無法取得資料';
    }
  }
}
