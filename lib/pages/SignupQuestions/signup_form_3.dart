import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lets_love_right/pages/SignupQuestions/signup_form_4.dart';

class SignupQuestionsThree extends StatefulWidget {
  const SignupQuestionsThree({Key? key}) : super(key: key);

  @override
  State<SignupQuestionsThree> createState() => _SignupQuestionsThreeState();
}

class _SignupQuestionsThreeState extends State<SignupQuestionsThree> {
  final _storageBox = Hive.box("hiveBox");

  final _christian = TextEditingController();
  final _denomination = TextEditingController();
  final _occupation = TextEditingController();

  String _churchInvolvement = "Frequent";
  _churchInvolvementDropdown(String? selectedValue) {
    setState(() {
      _churchInvolvement = selectedValue!;
    });
  }

  _handleSubmit() {
    // final page3Content = <String, dynamic>{
    //   "christian": _christian.text,
    //   "denomination": _denomination.text,
    //   "churchInvolvement": _churchInvolvement,
    //   "occupation": _occupation.text,
    // };

    _storageBox.put("christian", _christian.text);
    _storageBox.put("denomination", _denomination.text);
    _storageBox.put("churchInvolvement", _churchInvolvement);
    _storageBox.put("occupation", _occupation.text);

    // debugPrint(_storageBox.get("Page_3_Content"));

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const SignupQuestionsFour(),
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
              "Profile Setup (3/4)",
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
                  "Faith",
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
                controller: _christian,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  hintText: "Christian",
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
                controller: _denomination,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.auto_fix_high,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  hintText: "Denomination",
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
                    Icons.church_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 5),
                  const Text("Church Involvement"),
                  const Spacer(),
                  DropdownButton(
                    onChanged: _churchInvolvementDropdown,
                    value: _churchInvolvement,
                    underline: const SizedBox(),
                    items: const [
                      DropdownMenuItem(
                        value: "Frequent",
                        child: Text("Frequent"),
                      ),
                      DropdownMenuItem(
                        value: "Daily",
                        child: Text("Daily"),
                      ),
                      DropdownMenuItem(
                        value: "Rare",
                        child: Text("Rare"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                SizedBox(width: 20),
                Text(
                  "Lifestyle",
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
                controller: _occupation,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.laptop,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  hintText: "Occupation",
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
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (_) => const SignupQuestionsFour(),
                //     ),
                //   );
                // },
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
      )),
    );
  }
}
