import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lets_love_right/components/bottom_navbar.dart';
import 'package:lets_love_right/components/chat_ui.dart';
import 'package:lets_love_right/components/bio_fields.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key, required this.userId, required this.userName})
      : super(key: key);

  final String userId;
  final String userName;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  FirebaseFirestore db = FirebaseFirestore.instance;

  String _userName = "";
  String _imageUrl =
      "https://upload.wikimedia.org/wikipedia/commons/b/b1/Loading_icon.gif";
  String _maritalStatus = "";
  String _race = "";
  String _height = "";
  String _bodyType = "";
  String _hairLength = "";
  String _fashion = "";
  String _christian = "";
  String _denomination = "";
  String _churchInvolvement = "";
  String _occupation = "";
  String _education = "";
  String _salary = "";
  String _drink = "";
  String _relationType = "";

  _readData() {
    final docRef = db.collection("users").doc(widget.userId);
    docRef.get().then(
      (DocumentSnapshot doc) {
        final data = doc.data() as Map<String, dynamic>;
        setState(() {
          _userName = data["name"];
          _imageUrl = data["imageUrl"];
          _maritalStatus = data["maritalStatus"];
          _race = data["race"];
          _height = data["height"];
          _bodyType = data["bodyType"];
          _hairLength = data["hairLength"];
          _fashion = data["fashion"];
          _christian = data["christian"];
          _denomination = data["denomination"];
          _churchInvolvement = data["churchInvolvement"];
          _occupation = data["occupation"];
          _education = data["education"];
          _salary = data["salary"];
          _drink = data["doYouDrink"];
          _relationType = data["relationType"];
        });
      },
      onError: (e) => debugPrint("Error getting document: $e"),
    );
  }

  @override
  void initState() {
    super.initState();
    _readData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userName),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(_imageUrl),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              _userName,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TextButton(
            //       onPressed: () {},
            //       child: const Text(
            //         "Edit Profile",
            //         style: TextStyle(
            //           color: Colors.grey,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //     Container(
            //       margin: const EdgeInsets.all(10),
            //       padding: const EdgeInsets.symmetric(horizontal: 10),
            //       decoration: BoxDecoration(
            //         color: Colors.purple,
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       child: TextButton(
            //         onPressed: () {},
            //         child: const Text(
            //           "Upload Photo",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   children: const [
            //     SizedBox(width: 10),
            //     Text(
            //       "Gallery",
            //       style: TextStyle(
            //         fontSize: 22,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 10),
            // SizedBox(
            //   height: 150,
            //   child: ListView.builder(
            //       itemCount: 10,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (e, index) {
            //         return Container(
            //           width: 125,
            //           margin: const EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             image: DecorationImage(
            //               image: AssetImage("assets/images/model_$index.png"),
            //               alignment: Alignment.topCenter,
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         );
            //       }),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Bio",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // TextButton(
                //   onPressed: () {},
                //   child: const Text(
                //     "Edit",
                //     style: TextStyle(
                //         fontSize: 18,
                //         color: Colors.grey,
                //         fontWeight: FontWeight.bold),
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 20),
            BioFields(
              field: "Marital Status",
              data: _maritalStatus,
            ),
            BioFields(
              field: "Race",
              data: _race,
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            BioFields(
              field: "Height",
              data: _height,
            ),
            BioFields(
              field: "Body Type",
              data: _bodyType,
            ),
            BioFields(
              field: "Hair Length",
              data: _hairLength,
            ),
            BioFields(
              field: "Fashion",
              data: _fashion,
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            BioFields(
              field: "Christian",
              data: _christian,
            ),
            BioFields(
              field: "Denomination",
              data: _denomination,
            ),
            BioFields(
              field: "Church Involvement",
              data: _churchInvolvement,
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            BioFields(
              field: "Occupation",
              data: _occupation,
            ),
            BioFields(
              field: "Education",
              data: _education,
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            BioFields(
              field: "Salary",
              data: _salary,
            ),
            BioFields(
              field: "Do you Drink?",
              data: _drink,
            ),
            BioFields(
              field: "Type of Relationship",
              data: _relationType,
            ),
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatUIPage(
                        userId: widget.userId,
                        userName: _userName,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "MESSAGE",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 160.0,
                  height: 40,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.purple),
                  ),
                  child: TextButton(
                    onPressed: () {
                      final docRef = db.collection("users").doc(widget.userId);
                      docRef.delete();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("User Reported")),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const BottomNavigator(),
                        ),
                      );
                    },
                    child: const Text(
                      "Report User",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 160.0,
                  height: 40,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.purple),
                  ),
                  child: TextButton(
                    onPressed: () {
                      final docRef = db.collection("users").doc(widget.userId);
                      docRef.delete();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("User Blocked")),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const BottomNavigator(),
                        ),
                      );
                    },
                    child: const Text(
                      "Block User",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
