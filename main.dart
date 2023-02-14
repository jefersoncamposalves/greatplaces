import 'package:flutter/material.dart';
import 'package:greatplaces/providers/great_places.dart';
import 'package:greatplaces/utils/app_routes.dart';
import 'package:greatplaces/views/place_form.dart';
import 'package:greatplaces/views/places_list.dart';
import 'package:greatplaces/widgets/place_detail.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const PlacesList(),
        routes: {
          AppRoutes.placeForm: (ctx) => const PlaceForm(),
          AppRoutes.placeDetail: (ctx) => const PlaceDetail(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
