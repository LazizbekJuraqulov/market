import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/provider.dart';
import 'package:market/shop_page/widgets/checkout.dart';
import 'package:market/shop_page/widgets/orders.dart';
import 'package:market/shop_page/widgets/product.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<HomeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Color(0xffF9F9F9),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(
              Icons.search,
              color: Color(0xff222222),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
              ),
              child: Text(
                "My Bag",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    color: Color(0xff222222)),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Product(),
            SizedBox(
              height: 24,
            ),
            OrderPage(),
           
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total amount:",
                    style: TextStyle(color: Color(0xff9B9B9B), fontSize: 14),
                  ),
                  Text(
                    "123 \$",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CheckoutPage();
                }));
              },
              child: Container(
                height: 48,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffDB3022),
                ),
                alignment: Alignment.center,
                child: Text(
                  "CHECK OUT",
                  style: TextStyle(fontSize: 14, color: Color(0xffffffff)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
