import 'package:flutter/material.dart';

class FirstContentLoadedInHome extends StatelessWidget {
  const FirstContentLoadedInHome();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SomeWidgetCard(),
          const SomeWidgetCard(),
          const SomeWidgetCard(),
          const SomeWidgetCard(),
          const SizedBox(
            height: 20,
          ),
          // ! AQUI, usar Expanded
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text("Title in position $index"),
                  subtitle: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor inci",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SomeWidgetCard extends StatelessWidget {
  const SomeWidgetCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Title"),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text("Subtitle"),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut ",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
