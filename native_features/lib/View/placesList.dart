import 'package:flutter/material.dart';
import 'package:native_features/Controller/Places.dart';
import 'package:native_features/View/addNewPlace.dart';
import 'package:provider/provider.dart';

class PlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your places'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddNewPlace.routeName);
              })
        ],
      ),
      body: Center(
        child: Consumer<Places>(
          child: Text('No places added yet. Add places and get started now!'),
          builder: (ctx, places, ch) {
            return places.placesList.length <= 0
                ? ch
                : ListView.builder(
                    itemCount: places.placesList.length,
                    itemBuilder: (ctx, i) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: FileImage(
                            places.placesList[i].img,
                          ),
                        ),
                        title: Text(places.placesList[i].title),
                        onTap: () {},
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
