import 'package:flutter/material.dart';

class ReUseAbleElevatedButton extends StatelessWidget {
  //for navigation to other page
  final VoidCallback onTap;
  //for button name thats given when call ReUseAbleElevatedButton
  final String text;

  const ReUseAbleElevatedButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      width: double.infinity,


      child: ElevatedButton(
        

        onPressed:onTap ,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

          padding: const EdgeInsets.all(14),
            backgroundColor: const Color.fromRGBO(7, 174, 175, 100),





        ),
        child: Text(text,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
      ),
    );
  }
}
