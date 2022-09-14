import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lets_love_right/pages/SignupQuestions/signup_form_3.dart';

class SignupQuestionsTwo extends StatefulWidget {
  const SignupQuestionsTwo({Key? key}) : super(key: key);

  @override
  State<SignupQuestionsTwo> createState() => _SignupQuestionsTwoState();
}

class _SignupQuestionsTwoState extends State<SignupQuestionsTwo> {
  final _storageBox = Hive.box("hiveBox");

  final _height = TextEditingController();
  final _fashion = TextEditingController();

  String _bodyType = "Athletic";
  _bodyTypeDropdown(String? selectedValue) {
    setState(() {
      _bodyType = selectedValue!;
    });
  }

  String _hairLength = "Short";
  _hairLengthDropdown(String? selectedValue) {
    setState(() {
      _hairLength = selectedValue!;
    });
  }

  String _hairColor = "Black";
  _hairColorDropdown(String? selectedValue) {
    setState(() {
      _hairColor = selectedValue!;
    });
  }

  String _eyeColor = "Blue";
  _eyeColorDropdown(String? selectedValue) {
    setState(() {
      _eyeColor = selectedValue!;
    });
  }

  _handleSubmit() {
    // final page2Content = <String, dynamic>{
    //   "height": _height.text,
    //   "bodyType": _bodyType,
    //   "hairLength": _hairLength,
    //   "hairColour": _hairColor,
    //   "eyeColour": _eyeColor,
    //   "fashion": _fashion.text
    // };

    _storageBox.put("height", _height.text);
    _storageBox.put("bodyType", _bodyType);
    _storageBox.put("hairLength", _hairLength);
    _storageBox.put("hairColour", _hairColor);
    _storageBox.put("eyeColour", _eyeColor);
    _storageBox.put("fashion", _fashion.text);

    // debugPrint(_storageBox.get("page2Content"));

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const SignupQuestionsThree(),
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
                image: AssetImage(
                  "assets/images/logo.png",
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Profile Setup (2/4)",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
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
                  controller: _height,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Height (in Centimetre)",
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
                      Icons.local_fire_department_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    const Text("Body Type"),
                    const Spacer(),
                    DropdownButton(
                      onChanged: _bodyTypeDropdown,
                      value: _bodyType,
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(
                          value: "Athletic",
                          child: Text("Athletic"),
                        ),
                        DropdownMenuItem(
                          value: "Skinny",
                          child: Text("Skinny"),
                        ),
                        DropdownMenuItem(
                          value: "Plus Size",
                          child: Text("Plus Size"),
                        ),
                      ],
                    ),
                  ],
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
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    const Text("Hair Length"),
                    const Spacer(),
                    DropdownButton(
                      onChanged: _hairLengthDropdown,
                      value: _hairLength,
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(
                          value: "Short",
                          child: Text("Short"),
                        ),
                        DropdownMenuItem(
                          value: "Medium",
                          child: Text("Medium"),
                        ),
                        DropdownMenuItem(
                          value: "Long",
                          child: Text("Long"),
                        ),
                      ],
                    ),
                  ],
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
                      Icons.scatter_plot_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    const Text("Hair Colour"),
                    const Spacer(),
                    DropdownButton(
                      onChanged: _hairColorDropdown,
                      value: _hairColor,
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(
                          value: "Black",
                          child: Text("Black"),
                        ),
                        DropdownMenuItem(
                          value: "Brown",
                          child: Text("Brown"),
                        ),
                        DropdownMenuItem(
                          value: "Blonde",
                          child: Text("Blonde"),
                        ),
                      ],
                    ),
                  ],
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
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    const Text("Eye Colour"),
                    const Spacer(),
                    DropdownButton(
                      onChanged: _eyeColorDropdown,
                      value: _eyeColor,
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(
                          value: "Blue",
                          child: Text("Blue"),
                        ),
                        DropdownMenuItem(
                          value: "Black",
                          child: Text("Black"),
                        ),
                        DropdownMenuItem(
                          value: "Brown",
                          child: Text("Brown"),
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
                  controller: _fashion,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.female,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Fashion",
                  ),
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
                  onPressed: _handleSubmit,
                  child: const Text(
                    "CONTINUE",
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
