import 'dart:io';

import 'package:flutter/material.dart';

class Location {
  final double longitude;
  final double latitude;
  final String address;
  Location({@required this.longitude, @required this.latitude, this.address});
}

class Place {
  final String id;
  final String title;
  final Location loc;
  final File img;
  Place({
    @required this.id,
    @required this.title,
    @required this.loc,
    @required this.img,
  });
}
