import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_flutter/screens/home/widgets/animeted_list_view.dart';

import 'home_top.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;

  StaggerAnimation({@required this.controller})
      : containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease),
        listSlidePosition = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
                parent: controller,
                curve: Interval(0.32, 0.8, curve: Curves.ease)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        HomeTop(containerGrow: containerGrow),
        AnimetedListView(
          listSlidePosition: listSlidePosition,
        ),
      ],
    );
  }
}
