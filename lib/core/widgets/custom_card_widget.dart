import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double size;
  final Color color;
  final String text;
  final Image image;

  const CustomCard(
      {Key? key,
      required this.size,
      required this.color,
      required this.text,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: color,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FittedBox(
                      child: Text(text,
                          style: Theme.of(context).textTheme.headline6),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10), child: image),
                ),
              ],
            )),
      ),
    );
  }
}
