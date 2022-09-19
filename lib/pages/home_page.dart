import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lets_love_right/pages/view_all_page.dart';
import 'package:lets_love_right/components/user_page.dart';
import 'package:lets_love_right/components/side_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseFirestore db = FirebaseFirestore.instance;

  List _dataList = [];

  _readData() async {
    final docRef = db.collection("users");
    QuerySnapshot querySnapshot = await docRef.get();
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    setState(() {
      _dataList = allData;
    });
  }

  @override
  void initState() {
    super.initState();
    _readData();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("List Length : ${_dataList.length}");

    if (_dataList.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Loading ..."),
        ),
        body: const Center(
          child: Text("Loading ..."),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("All Matches"),
      ),
      drawer: const SideDrawer(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Top Matches",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ViewAllPage(),
                    ),
                  );
                },
                child: const Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 225,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _dataList.length,
                itemBuilder: (e, index) {
                  return TopCard(
                    userName: _dataList[index]["name"],
                    imageUrl: _dataList[index]["imageUrl"],
                  );
                }),
          ),
          Row(
            children: const [
              SizedBox(width: 25),
              Text(
                "New Matches",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
                itemCount: _dataList.length,
                itemBuilder: (e, index) {
                  return ScrollList(
                    userName: _dataList[index]["name"],
                    imageUrl: _dataList[index]["imageUrl"],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class TopCard extends StatelessWidget {
  const TopCard({Key? key, required this.imageUrl, required this.userName})
      : super(key: key);

  final String imageUrl;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Container(
          width: 300,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.25),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Container(
          width: 200,
          alignment: const Alignment(0.1, 0.5),
          child: Text(
            userName,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: 120,
          alignment: const Alignment(0, 0.65),
          child: const Text(
            "5 KM",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: 50,
          alignment: const Alignment(-8, 0.6),
          child: const Icon(
            Icons.local_fire_department_outlined,
            color: Colors.white,
          ),
        ),
        Container(
          width: 75,
          alignment: const Alignment(-4, 0.6),
          child: const Text(
            "90%",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class ScrollList extends StatelessWidget {
  const ScrollList({Key? key, required this.imageUrl, required this.userName})
      : super(key: key);

  final String imageUrl;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 75,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "5 KM",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(width: 15),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => UserPage(userName: userName),
                ),
              );
            },
            child: const Text(
              "View",
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
