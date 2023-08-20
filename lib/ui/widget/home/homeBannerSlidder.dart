import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class HomeBannerSlidder extends StatelessWidget {
   HomeBannerSlidder({super.key});
   final CarouselController _CarouselController = CarouselController();

   //_currentSelectedIndex jekhane jekhane use kora hoice value change hole sobai listen korbe (ValueNotifier)use korar jonno
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _CarouselController,
          //viewportFraction used for image show full width in carousel
          options: CarouselOptions(
            autoPlay: true,
              reverse: false,
              height: 180.0,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                _currentSelectedIndex.value = index;
              }),

          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(9)),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 5,
        ),

        //selected carousel background color
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
                      decoration: BoxDecoration(
                          color: i == _currentSelectedIndex.value
                              ? AppColors.primaryColor
                              : null,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: i == _currentSelectedIndex.value
                                  ? AppColors.primaryColor
                                  : Colors.grey)),
                    )
                ],
              );
            }),
      ],
    );

  }
}
