import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitqa/src/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarouselWithIndicator extends StatefulWidget {
  CarouselWithIndicator(
      {Key? key, required this.children, required this.height})
      : super(key: key);

  List<Widget> children;
  double height;

  @override
  State<CarouselWithIndicator> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CarouselSlider(
          items: widget.children,
          carouselController: _controller,
          options: CarouselOptions(
              height: widget.height,
              autoPlay: false,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              viewportFraction: 1, // full width
              onPageChanged: (index, reason) =>
                  setState(() => _current = index)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.children.asMap().entries.map((entry) {
              return Container(
                width: 6,
                height: 6,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        (entry.key == _current) ? FColors.blue : FColors.white),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
