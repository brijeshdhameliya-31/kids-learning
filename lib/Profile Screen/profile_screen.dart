import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kids_learning/Ads/bannerAdsManager.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widget/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  File? image;
  final ImagePicker _picker = ImagePicker();
  File? storeImage;
  Uint8List? imageBytes;

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      final bytes = await image!.readAsBytes();
      final base64Image = base64Encode(bytes);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('profileImage', base64Image);
      setState(() {
        imageBytes = bytes;
      });
    }
  }

  setDetails() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? name = preferences.getString('userName');
    String? base64Image = preferences.getString('profileImage');
    setState(() {
      nameController.text = name ?? "";
      if (base64Image != null) {
        imageBytes = base64Decode(base64Image);
      }
    });
  }

  storeDetail() async {
    if (nameController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Name is Required")));
    } else {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString('userName', nameController.text);
      Navigator.of(context).pop(true);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue.withOpacity(0.99),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: 70,
            decoration: const BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.4,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    displayPicture(),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        _pickImage();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.edit,
                              color: AppColors.textTitleColor, size: 20),
                          const SizedBox(width: 5),
                          Text("Edit Profile Image",
                              style: CustomTextStyle.medium.copyWith(
                                  fontSize: 15,
                                  color: AppColors.textTitleColor))
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                            hintText: "Enter Your Name",
                            filled: true,
                            fillColor: AppColors.skyBlue.withOpacity(0.5),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          storeDetail();
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
                                "Update Profile",
                                style: CustomTextStyle.semibold.copyWith(
                                    fontSize: 15, color: AppColors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/homeIcon/profile-header.png",
                  width: 325,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    icon: Image.asset(Images.backArrow, width: 45)),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: BannerAdWidget()),
        ],
      )),
    );
  }

//assets/images/homeIcon/profile_placeholder.png
//assets/images/homeIcon/profile_frame.png
  Widget displayPicture() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 60, top: 15),
          child: Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.pink),
            child: image != null
                ? CircleAvatar(
                    radius: 60,
                    backgroundImage: FileImage(image!),
                  )
                : imageBytes != null
                    ? CircleAvatar(
                        radius: 60,
                        backgroundImage: MemoryImage(imageBytes!),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Image.asset(
                              "assets/images/homeIcon/profile_placeholder.png"),
                        )),
          ),
        ),
        Image.asset("assets/images/homeIcon/profile_frame.png", width: 220),
        // Padding(
        //   padding: const EdgeInsets.only(top: 90, left: 95),
        //   child: InkWell(
        //     onTap: () {
        //       _pickImage();
        //     },
        //     child: Container(
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: AppColors.skyBlue),
        //         child: const Padding(
        //           padding: EdgeInsets.all(4.0),
        //           child: Icon(
        //             Icons.edit,
        //             color: AppColors.textTitleColor,
        //           ),
        //         )),
        //   ),
        // )
      ],
    );
  }
}
