import 'package:flutter/material.dart';
import '../model/Beer.dart';

class BeerTile extends StatelessWidget {
  Beer _beer;

  BeerTile(this._beer);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(_beer.name),
          subtitle: Text(_beer.tagline),
          leading: Container(
            margin: EdgeInsets.only(left: 6.0),
            child: Image.network(
              _beer.image_url, height: 50.0, fit: BoxFit.fill,),
          ),
        ),
        Divider()
      ],
    );
  }
}
