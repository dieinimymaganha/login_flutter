import 'package:flutter/material.dart';
import 'package:login_flutter/screens/home/widgets/list_data.dart';

class AnimetedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;


  AnimetedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(title: 'Dieinimy', subtitle: 'Dj', image: AssetImage('images/IMG_20200517_091957.jpg'), margin: listSlidePosition.value * 3),
        ListData(title: 'Lucas', subtitle: 'Rossitão', image: AssetImage('images/screenshot_3.png'), margin: listSlidePosition.value * 2),
        ListData(title: 'Marco', subtitle: 'Marco Véio', image: AssetImage('images/screenshot_4.png'), margin: listSlidePosition.value * 1),
        ListData(title: 'Robson', subtitle: 'Posso programar android Studio?', image: AssetImage('images/screenshot_5.png'), margin: listSlidePosition.value * 0),
      ],
    );
  }
}
