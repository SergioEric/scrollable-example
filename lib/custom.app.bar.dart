import 'package:flutter/material.dart';

const black = Color(0xff131313);
const String username = "Sergio";

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brightness = Theme.of(context).brightness;

    final iconColor =
        brightness == Brightness.light ? Colors.black : Colors.white;
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: brightness == Brightness.light
            ? Colors.white
            : Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.05),
            offset: const Offset(5, 20),
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        children: [
          // SizedBox(height: 30,),
          Row(
            children: [
              Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(
                    Icons.menu,
                    size: 22,
                    color: iconColor,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                username,
                style: textTheme.bodyText2,
                // style: TextStyle(color: drop_color_1_4),
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.cake, size: 18, color: iconColor),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              // const SizedBox(
              //   width: 12,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
