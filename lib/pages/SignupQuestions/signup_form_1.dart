import 'package:flutter/material.dart';
import 'package:lets_love_right/pages/SignupQuestions/signup_form_2.dart';

class SignupQuestionsOne extends StatefulWidget {
  const SignupQuestionsOne({Key? key}) : super(key: key);

  @override
  State<SignupQuestionsOne> createState() => _SignupQuestionsOneState();
}

class _SignupQuestionsOneState extends State<SignupQuestionsOne> {
  String _genderValue = "Male";
  _genderDropDown(String? selectedValue) {
    setState(() {
      _genderValue = selectedValue!;
    });
  }

  String _maritalStatus = "Single";
  _maritalDropDown(String? selectedValue) {
    setState(() {
      _maritalStatus = selectedValue!;
    });
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
                "Create Profile",
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
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Full Name",
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
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.map_outlined,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Enter City Name",
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
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.pin_drop_outlined,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Enter Country Name",
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
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Enter Zip Code",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  SizedBox(width: 20),
                  Text(
                    "General",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
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
                    const Text("Gender"),
                    const Spacer(),
                    DropdownButton(
                      onChanged: _genderDropDown,
                      value: _genderValue,
                      underline: const SizedBox(),
                      hint: const Text("Gender"),
                      items: const [
                        DropdownMenuItem(
                          value: "Male",
                          child: Text("Male"),
                        ),
                        DropdownMenuItem(
                          value: "Female",
                          child: Text("Female"),
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
                      Icons.local_fire_department_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    const Text("Marital Status"),
                    const Spacer(),
                    DropdownButton(
                      onChanged: _maritalDropDown,
                      value: _maritalStatus,
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(
                          value: "Single",
                          child: Text("Single"),
                        ),
                        DropdownMenuItem(
                          value: "Married",
                          child: Text("Married"),
                        ),
                        DropdownMenuItem(
                          value: "Divorced",
                          child: Text("Divorced"),
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
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintText: "Race",
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SignupQuestionsTwo(),
                      ),
                    );
                  },
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
