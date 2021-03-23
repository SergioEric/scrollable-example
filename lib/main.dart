import 'package:flutter/material.dart';
import 'package:scrollables/search.bar.dart';

import 'custom.app.bar.dart';
import 'first.content.loaded.in.home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: Column(
        children: [
          Flexible(
            child: Scaffold(
              body: Stack(
                children: const [
                  MainContentHomePage(),
                  //other reactive widgets
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainContentHomePage extends StatelessWidget {
  const MainContentHomePage();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAppBar(),
        Container(
          margin: const EdgeInsets.only(top: 45),
          child: SearchBar(),
        ),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            SizedBox(
              height: 117, // 45 + 52(searchBar) 97
            ),
            Flexible(child: FirstContentLoadedInHome()),
          ],
        ),
      ],
    );
  }
}
