import 'package:fitqa/theme/color.dart';
import 'package:flutter/material.dart';

class ScreenOrderComplete extends StatelessWidget {
  const ScreenOrderComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: FColors.appBackground,
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            const Text(
              'Success!',
              style: const TextStyle(fontSize: 36),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipPath(
              clipper: CenterWaveClipper(),
              child: Container(
                color: const Color(0xFFF9F9F9),
                width: 268,
                height: 230,
                padding: const EdgeInsets.all(30),
                child: Image.asset(
                  'images/dummy.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Your order will be delivered soon.\nThank you for choosing our app!',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Track your order'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to HOME'),
            ),
          ],
        ));
  }
}

class CenterWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double _xScaling = size.width / 269;
    final double _yScaling = size.height / 230;
    path.lineTo(124.085 * _xScaling, 0.0181746 * _yScaling);
    path.cubicTo(
      75.9921 * _xScaling,
      -0.715348 * _yScaling,
      39.8297 * _xScaling,
      20.9541 * _yScaling,
      32.4822 * _xScaling,
      28.9006 * _yScaling,
    );
    path.cubicTo(
      30.1444 * _xScaling,
      32.1098 * _yScaling,
      22.8894 * _xScaling,
      40.8204 * _yScaling,
      27.0473 * _xScaling,
      55.4908 * _yScaling,
    );
    path.cubicTo(
      31.7884 * _xScaling,
      72.2192 * _yScaling,
      37.378 * _xScaling,
      72.912 * _yScaling,
      23 * _xScaling,
      88.9578 * _yScaling,
    );
    path.cubicTo(
      6.87134 * _xScaling,
      106.957 * _yScaling,
      -15.1098 * _xScaling,
      141.68 * _yScaling,
      14.9483 * _xScaling,
      185.233 * _yScaling,
    );
    path.cubicTo(
      45.0064 * _xScaling,
      228.786 * _yScaling,
      118.849 * _xScaling,
      232.096 * _yScaling,
      157.8 * _xScaling,
      229.244 * _yScaling,
    );
    path.cubicTo(
      195.373 * _xScaling,
      226.493 * _yScaling,
      241.632 * _xScaling,
      208.521 * _yScaling,
      259.496 * _xScaling,
      186.15 * _yScaling,
    );
    path.cubicTo(
      278.533 * _xScaling,
      162.31 * _yScaling,
      264.987 * _xScaling,
      124.687 * _yScaling,
      253.409 * _xScaling,
      106.837 * _yScaling,
    );
    path.cubicTo(
      241.813 * _xScaling,
      88.9578 * _yScaling,
      268.013 * _xScaling,
      52.7401 * _yScaling,
      244.468 * _xScaling,
      33.0267 * _yScaling,
    );
    path.cubicTo(
      220.922 * _xScaling,
      13.3133 * _yScaling,
      184.201 * _xScaling,
      0.935078 * _yScaling,
      124.085 * _xScaling,
      0.0181746 * _yScaling,
    );
    path.cubicTo(
      124.085 * _xScaling,
      0.0181746 * _yScaling,
      124.085 * _xScaling,
      0.0181746 * _yScaling,
      124.085 * _xScaling,
      0.0181746 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
