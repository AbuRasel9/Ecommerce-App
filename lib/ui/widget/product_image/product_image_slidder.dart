import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class ProductImageSlidder extends StatelessWidget {
  ProductImageSlidder({super.key});

  final CarouselController _CarouselController = CarouselController();

  //_currentSelectedIndex jekhane jekhane use kora hoice value change hole sobai listen korbe (ValueNotifier)use korar jonno
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    //stack use kora hoi image er vitor text add korar jonno
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _CarouselController,
          //viewportFraction used for image show full width in carousel
          options: CarouselOptions(
              height: 240.0,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                _currentSelectedIndex.value = index;
              }),

          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        //for set product image
                        image: DecorationImage(
                          //for fit image full box
                          fit: BoxFit.cover,
                            image: AssetImage('assets/images/product.png'))),
                    );
              },
            );
          }).toList(),
        ),

        //selected carousel background color
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ValueListenableBuilder(
                    valueListenable: _currentSelectedIndex,
                    builder: (context, updateValue, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var i = 0; i < 5; i++)
                            Container(
                              margin: EdgeInsets.all(4),
                              height: 13,
                              width: 13,
                              //selected circle color
                              decoration: BoxDecoration(
                                  color: i == _currentSelectedIndex.value
                                      ? AppColors.primaryColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  //unselected color
                                  border: Border.all(
                                      color: i == _currentSelectedIndex.value
                                          ? AppColors.primaryColor
                                          : Colors.grey)),
                            )
                        ],
                      );
                    }),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
