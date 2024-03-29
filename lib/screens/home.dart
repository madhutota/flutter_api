import 'package:flutter/material.dart';
import 'package:flutter_api/model/Beer.dart';
import '../widgets/beer_tile.dart';
import '../repository/beer_repository.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() =>_HomeState();
}

class _HomeState extends State<Home> {
  List<Beer> _beers = <Beer>[];

  @override
  void initState() {
    super.initState();
    listenForBeers();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Top Beers'),
        ),
        body: ListView.builder(
            itemCount: _beers.length,
            itemBuilder: (context, index) => BeerTile(_beers[index])),
      ),
    );
  }


  void listenForBeers() async {
    final Stream<Beer> stream = await getBeers();
    stream.listen((Beer beer) =>
        setState(() => _beers.add(beer))
    );
  }
}
