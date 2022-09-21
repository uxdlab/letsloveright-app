import 'package:flutter/material.dart';

class ICantStandPage extends StatefulWidget {
  const ICantStandPage({Key? key}) : super(key: key);

  @override
  State<ICantStandPage> createState() => _ICantStandPageState();
}

class _ICantStandPageState extends State<ICantStandPage> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;
  bool _value7 = false;
  bool _value8 = false;
  bool _value9 = false;
  bool _value10 = false;
  bool _value11 = false;
  bool _value12 = false;
  bool _value13 = false;
  bool _value14 = false;
  bool _value15 = false;
  bool _value16 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("I Can't Stand")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Social Living",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Introversion :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value1,
                    onChanged: (bool? val) {
                      setState(() {
                        _value1 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must have a partner who enjoys staying in to have"""
                      """quiet evenings alone or with small groups of friends.""",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Extroversion :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value2,
                    onChanged: (bool? val) {
                      setState(() {
                        _value2 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must have a partner who is social and likes"""
                      """ to talk to others.""",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Sexuality",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Sexuality :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value3,
                    onChanged: (bool? val) {
                      setState(() {
                        _value3 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "I must have a spouse who saved themselves for marriage.",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value4,
                    onChanged: (bool? val) {
                      setState(() {
                        _value4 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must have someone who is mature and experienced as"""
                      """a sexual partner and is able to express themselves.""",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Financial",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Financial :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value5,
                    onChanged: (bool? val) {
                      setState(() {
                        _value5 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "My partner must be financially organized and responsible.",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value6,
                    onChanged: (bool? val) {
                      setState(() {
                        _value6 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must have a partner who can focus on more"""
                      """than just money in their lives.""",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Spirituality",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Spirituality :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value7,
                    onChanged: (bool? val) {
                      setState(() {
                        _value7 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must have someone who has a deep commitment"""
                      """to their beliefs and their spirituality.""",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value8,
                    onChanged: (bool? val) {
                      setState(() {
                        _value8 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """My partner must accept my religious beliefs even"""
                      """if they don’t share them.""",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Family",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Step kids :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value9,
                    onChanged: (bool? val) {
                      setState(() {
                        _value9 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must have someone who has step kids ow will """
                      """accept mine as their own.""",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Children :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value10,
                    onChanged: (bool? val) {
                      setState(() {
                        _value10 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "I must have a partner who is willing to adopt kids.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Values",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Shared Politics :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value11,
                    onChanged: (bool? val) {
                      setState(() {
                        _value11 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "I must be with someone who share my political beliefs.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Style/Appearances :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value12,
                    onChanged: (bool? val) {
                      setState(() {
                        _value12 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must have someone who cares about how they """
                      """look and dresses up.""",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Family Life :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value13,
                    onChanged: (bool? val) {
                      setState(() {
                        _value13 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must be with someone who is committed and """
                      """wants to have a family.""",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Traits",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Affection :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value14,
                    onChanged: (bool? val) {
                      setState(() {
                        _value14 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must be with someone who likes and is """
                      """comfortable giving affection to me.""",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Personal Habit :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value15,
                    onChanged: (bool? val) {
                      setState(() {
                        _value15 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must have a partner who maintains the highest """
                      """level of personal hygiene.""",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value16,
                    onChanged: (bool? val) {
                      setState(() {
                        _value16 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """I must be with someone who has a routine """
                      """in the morning.""",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.purple,
              ),
              child: TextButton(
                onPressed: () {
                  const snackBar = SnackBar(
                    content: Text("Data Added"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
