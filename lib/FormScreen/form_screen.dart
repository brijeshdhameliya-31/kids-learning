import 'package:flutter/material.dart';
import 'package:kids_learning/TabbarScreen/tab_bar_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();

  saveDetails(bool value) async {
    if (nameController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Name is Required")));
    } else {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString('userName', nameController.text);
      preferences.setBool('formData', value);
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => const TabBarScreen()),(route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue.withOpacity(0.99),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.blue.shade200,
              Colors.white,
              Colors.blue.shade200
            ])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/homeIcon/splashImage.png", width: 180),
              Text(
                "Welcome Back!",
                style: CustomTextStyle.semibold.copyWith(
                    letterSpacing: 1.5, fontSize: 25, color: AppColors.black),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    saveDetails(true);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.skyBlue,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 0.5, color: AppColors.textTitleColor)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: CustomTextStyle.semibold
                              .copyWith(fontSize: 15, color: AppColors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              )
              // ElevatedButton(
              //     onPressed: () async {
              //       SharedPreferences preferences =
              //            await SharedPreferences.getInstance();
              //        preferences.setBool('formData', true);
              //     },
              //     child: Text("Save"))
            ],
          ),
        ),
      )),
    );
  }
}
