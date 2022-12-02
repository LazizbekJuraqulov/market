import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      
      backgroundColor: Color(0xffffffff),
      centerTitle: true,
        elevation: 0.5,
        automaticallyImplyLeading: false,
        leading:IconButton(onPressed: (){
         Navigator.pop(context);
        }, icon:Icon(Icons.chevron_left_sharp,color: Colors.black,)),
        title: Text("Checkout",style: TextStyle(color: Colors.black),),),
      
    );
    
  }
}