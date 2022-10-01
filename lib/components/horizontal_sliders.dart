import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HorizontalSliders extends StatelessWidget {
  const HorizontalSliders({super.key});

  @override
  Widget build(BuildContext context) {
    PageController? pageViewController;

    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 149,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: Container(
        width: double.infinity,
        height: 500,
        child: Stack(
          children: [
            PageView(
              controller: pageViewController ??= PageController(initialPage: 0),
              scrollDirection: Axis.horizontal,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    'https://picsum.photos/seed/17/600',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    'https://picsum.photos/seed/19/600',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    'https://picsum.photos/seed/609/600',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: SmoothPageIndicator(
                  controller: pageViewController,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  onDotClicked: (i) {
                    pageViewController!.animateToPage(
                      i,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  effect: const ExpandingDotsEffect(
                    expansionFactor: 2,
                    spacing: 8,
                    radius: 16,
                    dotWidth: 5,
                    dotHeight: 5,
                    dotColor: Color(0xFF9E9E9E),
                    activeDotColor: Color(0xFF080303),
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
