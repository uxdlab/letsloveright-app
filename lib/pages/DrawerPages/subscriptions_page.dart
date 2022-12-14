import 'package:flutter/material.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  final _formKey = GlobalKey<FormState>();
  String _firstname = "";
  String _lastname = "";
  String _phone = "";
  String _email = "";

  _handleSubmit() {
    debugPrint("FirstName : $_firstname");
    debugPrint("LastName : $_lastname");
    debugPrint("Phone : $_phone");
    debugPrint("E-Mail : $_email");
  }

  @override
  Widget build(BuildContext context) {
    TableRow tableRow1 = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Sport'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('1 Month Single Plan'),
      ),
    ]);

    TableRow tableRow2 = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Kaufdatun'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Aug 23rd 2022'),
      ),
    ]);

    TableRow tableRow3 = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Gesamtsunne'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('50'),
      ),
    ]);

    return Scaffold(
      appBar: AppBar(title: const Text("Single Plan")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: Table(
                  border: TableBorder.all(),
                  defaultColumnWidth: const FixedColumnWidth(160.0),
                  children: <TableRow>[
                    tableRow1,
                    tableRow2,
                    tableRow3,
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                height: (35),
                decoration: const BoxDecoration(
                  color: Colors.purple,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Single Plan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                child: const Text(
                  'Training Plans',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.person_outline),
                    border: InputBorder.none,
                    hintText: "Enter First Name",
                  ),
                  onChanged: (text) => _firstname = text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your First Name";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.person_outline),
                    hintText: "Enter Last Name",
                  ),
                  onChanged: (text) => _lastname = text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Last Name";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    border: InputBorder.none,
                    hintText: "Enter Phone",
                  ),
                  onChanged: (text) => _phone = text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Phone";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.email),
                    border: InputBorder.none,
                    hintText: "Enter Email",
                  ),
                  onChanged: (text) => _email = text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Email";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _handleSubmit();
                    }
                  },
                  child: const Text(
                    "Make Payment",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
