import 'package:flutter/material.dart';

class ListWheelView extends StatefulWidget {
  const ListWheelView({Key? key}) : super(key: key);

  @override
  State<ListWheelView> createState() => _ListWheelViewState();
}

class _ListWheelViewState extends State<ListWheelView> {
  bool showChildren = true;
  final List<IconData> icons = [
    Icons.home,
    Icons.business,
    Icons.school,
    Icons.star,
    Icons.favorite,
    Icons.music_note,
    Icons.add_a_photo,
    Icons.account_box,
    Icons.add_alert_rounded,
    Icons.star,
    Icons.favorite,
    Icons.music_note,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WheelView",
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
      ),
      body: Padding(
        padding:const  EdgeInsets.only(left: 0),
        child: RotatedBox(
          quarterTurns: 1,
          child: ListWheelScrollView(
            clipBehavior: Clip.antiAlias,
          perspective: 0.0000000000000001,

      //      offAxisFraction: 0.8,
        //    diameterRatio: 0.8,
            itemExtent: 70,
            renderChildrenOutsideViewport: false,
            children: icons.map((icon) {
              return Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
