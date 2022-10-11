import 'package:flutter/material.dart';

class MustHavesPage extends StatefulWidget {
  const MustHavesPage({Key? key}) : super(key: key);

  @override
  State<MustHavesPage> createState() => _MustHavesPageState();
}

class _MustHavesPageState extends State<MustHavesPage> {
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
  bool _value17 = false;
  bool _value18 = false;
  bool _value19 = false;
  bool _value20 = false;
  bool _value21 = false;
  bool _value22 = false;
  bool _value23 = false;
  bool _value24 = false;
  bool _value25 = false;
  bool _value26 = false;
  bool _value27 = false;
  bool _value28 = false;
  bool _value29 = false;
  bool _value30 = false;
  bool _value31 = false;
  bool _value32 = false;
  bool _value33 = false;
  bool _value34 = false;
  bool _value35 = false;
  bool _value36 = false;
  bool _value37 = false;
  bool _value38 = false;
  bool _value39 = false;
  bool _value40 = false;
  bool _value41 = false;
  bool _value42 = false;
  bool _value43 = false;
  bool _value44 = false;
  bool _value45 = false;
  bool _value46 = false;
  bool _value47 = false;
  bool _value48 = false;
  bool _value49 = false;
  bool _value50 = false;
  bool _value51 = false;
  bool _value52 = false;
  bool _value53 = false;
  bool _value54 = false;
  bool _value55 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Must Haves")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Chemistry :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                  child: Text(
                    "I must feel deeply attracted to my partner.",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Communication :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who is a good listener and likes to have deep conversations.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Humor :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who makes me laugh and looks on the bright side of life.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Intimacy :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who can share their deep thoughts and secrets with me.",
                    ),
                  ),
                ),
              ],
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who shows me physically that they love me.",
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone that shows me through gifts that they love me.",
                    ),
                  ),
                ),
              ],
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone that shows me through acts of kindness that they really do love me.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Emotions :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                      "I must have someone who is aware of their emotions and can communicate them effectively.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Character :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who sticks to their convictions and does not give up easily.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Artistic Talents :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who has a passion for the arts or potentially has talents within the arts.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Education :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who loves to learn.",
                    ),
                  ),
                ),
              ],
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who has similar educational achievements to my own.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Exciting :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who likes taking risks and is adventurous.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Patience :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who can handle frustrations and setbacks with ease.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Conflicts :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who is willing to resolve conflict rather than letting it fester.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Personal Habits :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who maintains the highest level of personal hygiene.",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value17,
                    onChanged: (bool? val) {
                      setState(() {
                        _value17 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who has a routine in the morning.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Affection :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value18,
                    onChanged: (bool? val) {
                      setState(() {
                        _value18 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who likes and is comfortable giving affection to me.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Energy Level :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value19,
                    onChanged: (bool? val) {
                      setState(() {
                        _value19 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone whose energy matches my own.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Intellect :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value20,
                    onChanged: (bool? val) {
                      setState(() {
                        _value20 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who is intelligent.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Self-Confidence :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value21,
                    onChanged: (bool? val) {
                      setState(() {
                        _value21 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who has a strong amount of self-confidence and can make it through challenges.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Accept Help :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value22,
                    onChanged: (bool? val) {
                      setState(() {
                        _value22 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who is willing to ask for help and receive it when they need assistance.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Curiosity :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value23,
                  onChanged: (bool? val) {
                    setState(() {
                      _value23 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who is curious and open-minded.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Adaptability :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value24,
                  onChanged: (bool? val) {
                    setState(() {
                      _value24 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone adaptable and willing to adjust their plan according to circumstances.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Kindness :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value25,
                  onChanged: (bool? val) {
                    setState(() {
                      _value25 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who is kind and gentle.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Organized :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value26,
                  onChanged: (bool? val) {
                    setState(() {
                      _value26 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who values structure.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Tolerant :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value27,
                  onChanged: (bool? val) {
                    setState(() {
                      _value27 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who is willing to listen to other points of view from those around them.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Attractiveness :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value28,
                  onChanged: (bool? val) {
                    setState(() {
                      _value28 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who I find attractive.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Industriousness :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value29,
                  onChanged: (bool? val) {
                    setState(() {
                      _value29 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who is willing to put in the effort and work hard at their goals and their tasks.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Emotional Generosity :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value30,
                  onChanged: (bool? val) {
                    setState(() {
                      _value30 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who is sympathetic to other people’s challenges, including my own.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Unassuming / Criticism :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value31,
                  onChanged: (bool? val) {
                    setState(() {
                      _value31 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who is able to handle criticism and does so maturely and is willing to admit they might be wrong in some situations.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Loyal :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value32,
                  onChanged: (bool? val) {
                    setState(() {
                      _value32 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who is accountable and there to support me.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Values :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
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
                  value: _value33,
                  onChanged: (bool? val) {
                    setState(() {
                      _value33 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who is committed and wants to have a family.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Style / Appearances :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value34,
                  onChanged: (bool? val) {
                    setState(() {
                      _value34 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who cares about how they look and dresses up from time to time.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
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
                  value: _value35,
                  onChanged: (bool? val) {
                    setState(() {
                      _value35 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who shares my political beliefs.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Spirit of Volunteerism :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value36,
                  onChanged: (bool? val) {
                    setState(() {
                      _value36 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who is willing to give back to the community.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Autonomy :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value37,
                  onChanged: (bool? val) {
                    setState(() {
                      _value37 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who is willing to allow me to be my own person.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Shared Interests :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value38,
                  onChanged: (bool? val) {
                    setState(() {
                      _value38 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who shares my interests and passions.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Family :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "No Children :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value39,
                  onChanged: (bool? val) {
                    setState(() {
                      _value39 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who does not want kids.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Family :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value40,
                  onChanged: (bool? val) {
                    setState(() {
                      _value40 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who is willing to adopt kids.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Step Kids :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value41,
                  onChanged: (bool? val) {
                    setState(() {
                      _value41 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who has step kids or will accept mine as their own.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Parent Care :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value42,
                  onChanged: (bool? val) {
                    setState(() {
                      _value42 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must be with someone who is willing to help me take care of my aging parents.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Parenting style :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value43,
                  onChanged: (bool? val) {
                    setState(() {
                      _value43 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who shares my views on how to raise kids.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Social Living :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Socializing :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value44,
                  onChanged: (bool? val) {
                    setState(() {
                      _value44 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who is social and likes to talk to others.",
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                "Introverts :",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.purple,
                  value: _value45,
                  onChanged: (bool? val) {
                    setState(() {
                      _value45 = val!;
                    });
                  },
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who enjoys staying in to have quiet evenings alone or with small groups of friends.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Spirituality :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value46,
                    onChanged: (bool? val) {
                      setState(() {
                        _value46 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who has a deep commitment to their beliefs and their spirituality.",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value47,
                    onChanged: (bool? val) {
                      setState(() {
                        _value47 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "My partner must accept my religious beliefs even if they don’t share them.",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value48,
                    onChanged: (bool? val) {
                      setState(() {
                        _value48 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "My partner must be committed to going to church or to the temple.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Financial :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value49,
                    onChanged: (bool? val) {
                      setState(() {
                        _value49 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
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
                    value: _value50,
                    onChanged: (bool? val) {
                      setState(() {
                        _value50 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who can focus on more than just money in their lives.",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value51,
                    onChanged: (bool? val) {
                      setState(() {
                        _value51 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have a partner who shares my desire to be financially successful.",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Sexuality :",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value52,
                    onChanged: (bool? val) {
                      setState(() {
                        _value52 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
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
                    value: _value53,
                    onChanged: (bool? val) {
                      setState(() {
                        _value53 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who is mature and experienced as a sexual partner and is able to express themselves.",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value54,
                    onChanged: (bool? val) {
                      setState(() {
                        _value54 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who is traditional within the bedroom.",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: _value55,
                    onChanged: (bool? val) {
                      setState(() {
                        _value55 = val!;
                      });
                    }),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "I must have someone who is willing to explore their sexual desires in the bedroom.",
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
