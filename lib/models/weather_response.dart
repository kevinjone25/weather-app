class WeatherResponse {
  WeatherResponse({
    required this.success,
    required this.result,
    required this.records,
  });
  late final String success;
  late final Result result;
  late final Records records;

  WeatherResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    result = Result.fromJson(json['result']);
    records = Records.fromJson(json['records']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['result'] = result.toJson();
    _data['records'] = records.toJson();
    return _data;
  }
}

class Result {
  Result({
    required this.resourceId,
    required this.fields,
  });
  late final String resourceId;
  late final List<Fields> fields;

  Result.fromJson(Map<String, dynamic> json) {
    resourceId = json['resource_id'];
    fields = List.from(json['fields']).map((e) => Fields.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['resource_id'] = resourceId;
    _data['fields'] = fields.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Fields {
  Fields({
    required this.id,
    required this.type,
  });
  late final String id;
  late final String type;

  Fields.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['type'] = type;
    return _data;
  }
}

class Records {
  Records({
    required this.locations,
  });
  late final List<Locations> locations;

  Records.fromJson(Map<String, dynamic> json) {
    locations =
        List.from(json['locations']).map((e) => Locations.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['locations'] = locations.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Locations {
  Locations({
    required this.datasetDescription,
    required this.locationsName,
    required this.dataid,
    required this.location,
  });
  late final String datasetDescription;
  late final String locationsName;
  late final String dataid;
  late final List<Location> location;

  Locations.fromJson(Map<String, dynamic> json) {
    datasetDescription = json['datasetDescription'];
    locationsName = json['locationsName'];
    dataid = json['dataid'];
    location =
        List.from(json['location']).map((e) => Location.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['datasetDescription'] = datasetDescription;
    _data['locationsName'] = locationsName;
    _data['dataid'] = dataid;
    _data['location'] = location.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Location {
  Location({
    required this.locationName,
    required this.geocode,
    required this.lat,
    required this.lon,
    required this.weatherElement,
  });
  late final String locationName;
  late final String geocode;
  late final String lat;
  late final String lon;
  late final List<WeatherElement> weatherElement;

  Location.fromJson(Map<String, dynamic> json) {
    locationName = json['locationName'];
    geocode = json['geocode'];
    lat = json['lat'];
    lon = json['lon'];
    weatherElement = List.from(json['weatherElement'])
        .map((e) => WeatherElement.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['locationName'] = locationName;
    _data['geocode'] = geocode;
    _data['lat'] = lat;
    _data['lon'] = lon;
    _data['weatherElement'] = weatherElement.map((e) => e.toJson()).toList();
    return _data;
  }
}

class WeatherElement {
  WeatherElement({
    required this.elementName,
    required this.description,
    required this.time,
  });
  late final String elementName;
  late final String description;
  late final List<Time> time;

  WeatherElement.fromJson(Map<String, dynamic> json) {
    elementName = json['elementName'];
    description = json['description'];
    time = List.from(json['time']).map((e) => Time.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['elementName'] = elementName;
    _data['description'] = description;
    _data['time'] = time.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Time {
  Time({
    required this.startTime,
    required this.endTime,
    required this.elementValue,
  });
  late final String startTime;
  late final String endTime;
  late final List<ElementValue> elementValue;

  Time.fromJson(Map<String, dynamic> json) {
    startTime = json['startTime'];
    endTime = json['endTime'];
    elementValue = List.from(json['elementValue'])
        .map((e) => ElementValue.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['startTime'] = startTime;
    _data['endTime'] = endTime;
    _data['elementValue'] = elementValue.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ElementValue {
  ElementValue({
    required this.value,
    required this.measures,
  });
  late final String value;
  late final String measures;

  ElementValue.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    measures = json['measures'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['value'] = value;
    _data['measures'] = measures;
    return _data;
  }
}
