import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lets_love_right/pages/home_page.dart';
import 'package:firebase_storage/firebase_storage.dart';

class SignupQuestionsFour extends StatefulWidget {
  const SignupQuestionsFour({Key? key}) : super(key: key);

  @override
  State<SignupQuestionsFour> createState() => _SignupQuestionsFourState();
}

class _SignupQuestionsFourState extends State<SignupQuestionsFour> {
  final storageRef = FirebaseStorage.instance.ref();
  final _storageBox = Hive.box("hiveBox");

  final _education = TextEditingController();
  final _salary = TextEditingController();
  final _relationType = TextEditingController();
  final _personality = TextEditingController();
  String _imageUrl = "";

  String _doYouDrink = "No";
  _doYouDrinkDropdown(String? selectedValue) {
    setState(() {
      _doYouDrink = selectedValue!;
    });
  }

  bool _showPreview = false;
  late File _imageFile;
  final ImagePicker _picker = ImagePicker();

  _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (image != null) {
        _imageFile = File(image.path);
        _showPreview = true;
      } else {
        debugPrint("Error while uploading image");
      }
    });

    try {
      if (image != null) {
        final imageRef = storageRef.child("images/${image.name}");
        await imageRef.putFile(_imageFile);
        _imageUrl = await imageRef.getDownloadURL();
      }
    } on FirebaseException catch (e) {
      debugPrint(e.message);
    }
  }

  _handleSubmit() async {
    final List<dynamic> page4Content = [
      {
        "education": _education.text,
        "doYouDrink": _doYouDrink,
        "salary": _salary.text,
        "relationType": _relationType.text,
        "personality": _personality.text,
        "imageUrl": _imageUrl,
      },
    ];

    _storageBox.put("Page_4_Content", page4Content.toString());
    debugPrint(_storageBox.get("Page_4_Content"));

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Image(
                image: AssetImage("assets/images/logo.png"),
              ),
              const SizedBox(height: 10),
              const Text(
                "Profile Setup (4/4)",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  SizedBox(width: 20),
                  Text(
                    "Bio",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _education,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.school_outlined,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Education",
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.water_drop_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    const Text("Do You Drink"),
                    const Spacer(),
                    DropdownButton(
                      onChanged: _doYouDrinkDropdown,
                      value: _doYouDrink,
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(
                          value: "Yes",
                          child: Text("Yes"),
                        ),
                        DropdownMenuItem(
                          value: "No",
                          child: Text("No"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _salary,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Salary",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _relationType,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Type of Relationship",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _personality,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Personality",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  SizedBox(width: 20),
                  Text(
                    "Upload Picture",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _showPreview
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      child: Image.file(_imageFile),
                    )
                  : Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        onTap: _pickImage,
                        leading: const Icon(Icons.upload_file),
                        title: const Text("Upload Picture"),
                      ),
                    ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  // onPressed: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (_) => const HomePage(),
                  //     ),
                  //   );
                  // },
                  onPressed: _handleSubmit,
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
