import 'package:flutter/material.dart';
import 'package:native_features/View/addNewPlace.dart';
import 'package:provider/provider.dart';

import 'Controller/Places.dart';
import 'View/placesList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Places(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.brown,
          accentColor: Colors.black87,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PlacesList(),
        routes: {
          AddNewPlace.routeName: (ctx) => AddNewPlace(),
        },
      ),
    );
  }
}
