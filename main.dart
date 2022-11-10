import 'package:flutter/material.dart';
import './all_movies.dart';
import './favourite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Favourite Locations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Movie Collection'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.movie),
              text: 'All Movies',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favourites',
            ),
          ],),
        ),
        body: TabBarView(
          children: [
            AllMovies(),
            Favourite(),
          ],
        ),
      ),
    );
  }
}
