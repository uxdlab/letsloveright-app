import 'package:flutter/material.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
<<<<<<< HEAD
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  final String _productID = '1234565';
=======
  final _formKey = GlobalKey<FormState>();
  String _firstname = "";
  String _lastname = "";
  String _phone = "";
  String _email = "";
>>>>>>> 44ff2caf864f2c4aa6725bfa543c0b6fe76af15c

  _handleSubmit() {
    debugPrint("FirstName : $_firstname");
    debugPrint("LastName : $_lastname");
    debugPrint("Phone : $_phone");
    debugPrint("E-Mail : $_email");
  }

  @override
<<<<<<< HEAD
  void dispose() {
    _subscription!.cancel();
    super.dispose();
  }

  void _initialize() async {
    _available = await _inAppPurchase.isAvailable();

    List<ProductDetails> products = await _getProducts(
      productIds: <String>{_productID},
    );
    debugPrint('products: $products');
    debugPrint('_available: $_available');
    setState(() {
      _products = products;
    });
  }

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
      switch (purchaseDetails.status) {
        case PurchaseStatus.pending:
          //  _showPendingUI();
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          break;
        case PurchaseStatus.error:
          if (kDebugMode) {
            print(purchaseDetails.error!);
          }
          break;
        default:
          break;
      }

      if (purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
    });
  }

  Future<List<ProductDetails>> _getProducts(
      {required Set<String> productIds}) async {
    debugPrint('productIds: $productIds');
    ProductDetailsResponse response =
        await _inAppPurchase.queryProductDetails(productIds);
    debugPrint('_getProducts: $response');
    return response.productDetails;
  }

  ListTile _buildProduct({required ProductDetails product}) {
    return ListTile(
      leading: const Icon(Icons.attach_money),
      title: Text('${product.title} - ${product.price}'),
      subtitle: Text(product.description),
      trailing: ElevatedButton(
        onPressed: () {
          _subscribe(product: product);
        },
        child: const Text(
          'Subscribe',
        ),
=======
  Widget build(BuildContext context) {
    TableRow tableRow1 = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Sport'),
>>>>>>> 44ff2caf864f2c4aa6725bfa543c0b6fe76af15c
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
