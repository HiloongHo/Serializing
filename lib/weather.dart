class Weather {
  String? status;
  String? count;
  String? info;
  String? infocode;
  List<Forecasts>? forecasts;

  Weather({this.status, this.count, this.info, this.infocode, this.forecasts});

  Weather.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    count = json['count'];
    info = json['info'];
    infocode = json['infocode'];
    if (json['forecasts'] != null) {
      forecasts = <Forecasts>[];
      json['forecasts'].forEach((v) {
        forecasts!.add(new Forecasts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['count'] = this.count;
    data['info'] = this.info;
    data['infocode'] = this.infocode;
    if (this.forecasts != null) {
      data['forecasts'] = this.forecasts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Forecasts {
  String? city;
  String? adcode;
  String? province;
  String? reporttime;
  List<Casts>? casts;

  Forecasts(
      {this.city, this.adcode, this.province, this.reporttime, this.casts});

  Forecasts.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    adcode = json['adcode'];
    province = json['province'];
    reporttime = json['reporttime'];
    if (json['casts'] != null) {
      casts = <Casts>[];
      json['casts'].forEach((v) {
        casts!.add(new Casts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['adcode'] = this.adcode;
    data['province'] = this.province;
    data['reporttime'] = this.reporttime;
    if (this.casts != null) {
      data['casts'] = this.casts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Casts {
  String? date;
  String? week;
  String? dayweather;
  String? nightweather;
  String? daytemp;
  String? nighttemp;
  String? daywind;
  String? nightwind;
  String? daypower;
  String? nightpower;
  String? daytempFloat;
  String? nighttempFloat;

  Casts(
      {this.date,
        this.week,
        this.dayweather,
        this.nightweather,
        this.daytemp,
        this.nighttemp,
        this.daywind,
        this.nightwind,
        this.daypower,
        this.nightpower,
        this.daytempFloat,
        this.nighttempFloat});

  Casts.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    week = json['week'];
    dayweather = json['dayweather'];
    nightweather = json['nightweather'];
    daytemp = json['daytemp'];
    nighttemp = json['nighttemp'];
    daywind = json['daywind'];
    nightwind = json['nightwind'];
    daypower = json['daypower'];
    nightpower = json['nightpower'];
    daytempFloat = json['daytemp_float'];
    nighttempFloat = json['nighttemp_float'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['week'] = this.week;
    data['dayweather'] = this.dayweather;
    data['nightweather'] = this.nightweather;
    data['daytemp'] = this.daytemp;
    data['nighttemp'] = this.nighttemp;
    data['daywind'] = this.daywind;
    data['nightwind'] = this.nightwind;
    data['daypower'] = this.daypower;
    data['nightpower'] = this.nightpower;
    data['daytemp_float'] = this.daytempFloat;
    data['nighttemp_float'] = this.nighttempFloat;
    return data;
  }
}
