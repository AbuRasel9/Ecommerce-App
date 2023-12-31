import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class IncDecFormFeild extends StatefulWidget {
  const IncDecFormFeild({
    super.key,

  });


  @override
  State<IncDecFormFeild> createState() => _IncDecFormFeildState();
}

class _IncDecFormFeildState extends State<IncDecFormFeild> {
  int currentValue = 1;
  final TextEditingController controller=TextEditingController();


  @override
  void initState() {
    super.initState();
    controller.text = currentValue.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            currentValue++;
            controller.text = currentValue.toString();
          },
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.primaryColor,
            ),
            child: const Icon(
              Icons.add,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
            child: TextFormField(
          controller: controller,
          readOnly: true,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        )),
        const SizedBox(
          width: 2,
        ),
        GestureDetector(
          onTap: () {
            if (currentValue > 1) {
              currentValue--;
              controller.text = currentValue.toString();
            }
          },
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.primaryColor,
            ),
            child: const Icon(
              Icons.remove,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
