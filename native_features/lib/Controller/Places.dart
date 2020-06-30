import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:native_features/Model/place.dart';

class Places with ChangeNotifier {
  List<Place> _placesList = [];

  List<Place> get placesList {
    return [..._placesList];
  }

  void addPlace(final title, final File image) {
    final newPlace = Place(
        title: title, img: image, loc: null, id: DateTime.now().toString());

    _placesList.add(newPlace);
    notifyListeners();
  }
}
