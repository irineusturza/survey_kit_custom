
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class WidgetLoader extends StatelessWidget {
  const WidgetLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Image.asset(
                  "assets/images/loader_icon.png",
                height: 50,
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: LoadingAnimationWidget.discreteCircle(
                  color: Colors.transparent,
                  secondRingColor: Colors.red,
                  thirdRingColor: Colors.lightGreen,
                  size: 50
              )
            ),
        ],
      ),
    );
  }
}
