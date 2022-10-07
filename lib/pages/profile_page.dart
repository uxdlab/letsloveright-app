import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lets_love_right/components/bio_fields.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _userId = FirebaseAuth.instance.currentUser!.uid;
  FirebaseFirestore db = FirebaseFirestore.instance;

  dynamic _data = {};

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream: db.collection("users").doc(_userId).snapshots(),
      builder: (context, snapshot) {
        _data = snapshot.data?.data();

        if (_data == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return SingleChildScrollView(
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
                    image: NetworkImage(_data["imageUrl"]),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                _data["name"],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
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
                ],
              ),
              const SizedBox(height: 20),
              BioFields(
                field: "Marital Status",
                data: _data["maritalStatus"],
              ),
              BioFields(
                field: "Race",
                data: _data["race"],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              BioFields(
                field: "Height",
                data: _data["height"],
              ),
              BioFields(
                field: "Body Type",
                data: _data["bodyType"],
              ),
              BioFields(
                field: "Hair Length",
                data: _data["hairColour"],
              ),
              BioFields(
                field: "Fashion",
                data: _data["fashion"],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              BioFields(
                field: "Christian",
                data: _data["christian"],
              ),
              BioFields(
                field: "Denomination",
                data: _data["denomination"],
              ),
              BioFields(
                field: "Church Involvement",
                data: _data["churchInvolvement"],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              BioFields(
                field: "Occupation",
                data: _data["occupation"],
              ),
              BioFields(
                field: "Education",
                data: _data["education"],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              BioFields(
                field: "Salary",
                data: _data["salary"],
              ),
              BioFields(
                field: "Do you Drink?",
                data: _data["doYouDrink"],
              ),
              BioFields(
                field: "Type of Relationship",
                data: _data["relationType"],
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
