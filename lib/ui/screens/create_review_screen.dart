import 'package:ecommerce/ui/screens/review_screen.dart';
import 'package:ecommerce/ui/widget/app_elevated_button.dart';
import 'package:ecommerce/ui/widget/app_textfeild_widget.dart';
import 'package:flutter/material.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key});

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController reviewController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 02,
        backgroundColor: Colors.white,
        title: const Text(
          "Create Review",
          style: TextStyle(
            wordSpacing: 0.2,
            color: Colors.black54,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReviewScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black54,
            )),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                AppTextFeildWidget(hintText: "First Name", Controller: firstNameController),
                const SizedBox(height: 20,),
                AppTextFeildWidget(hintText: "Last Name", Controller: lastNameController),
                const SizedBox(height: 20,),
                AppTextFeildWidget(hintText: "Write Review", Controller: reviewController,maxLine: 5,),
                const SizedBox(height: 30,),
                ReUseAbleElevatedButton(text: "Submit", onTap: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
