import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 40,
              margin: EdgeInsets.all(16),
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your promo code",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    suffixIcon: FloatingActionButton(
                      backgroundColor: Color(0xff222222),
                      onPressed: () {
                        setState(() {});
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            context: context,
                            builder: (context) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 464,
                                  margin: EdgeInsets.only(
                                      left: 16, right: 16, top: 38),
                                  color: Color(0xffF9F9F9),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(left: 20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          hintText: "Enter your promo code",
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          suffixIcon: FloatingActionButton(
                                            backgroundColor: Colors.black,
                                            onPressed: () {},
                                            child: Icon(Icons
                                                .arrow_right_alt_outlined),
                                          ),
                                        )),
                                      ),
                                      SizedBox(
                                        height: 32,
                                      ),
                                      Text(
                                        "Your Promo Codes",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff222222)),
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Container(
                                      
                                        height: 80,
                                        decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            blurRadius: 25,
                                            spreadRadius: 0,
                                            color: Color.fromRGBO(0, 0, 0, 0.08),
                                          )],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Color(0xffffffff)),
                                        child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 80,
                                              height: 80,
                                              alignment: Alignment.center,
                                              padding:
                                                  EdgeInsets.only(left: 8),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(8),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8)),
                                                  color: Color(0xffBF190E)),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 34,
                                                        color: Color(
                                                            0xffffffff)),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: const [
                                                      Text(
                                                        "%",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text("off",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color: Colors
                                                                  .white))
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 14,),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                              Text("Personal offer",style: TextStyle(fontSize: 14,color:Color(0xff222222)),),
                                              Text("mypromocode2020",style: TextStyle(fontSize: 11,color:Color(0xff222222)))
                                            ],),
                                            SizedBox(width: 36,),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 14),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("6 days remaining",style: TextStyle(fontSize: 11,color: Color(0xff9B9B9B)),),
                                                  SizedBox(height: 10,),
                                                  Container(
                                                    width: 93,
                                                    height: 36,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                                                    color: Color(0xffDB3022)),
                                                    child: Text("Apply",style: TextStyle(fontSize: 14,color: Color(0xffffffff)),),
                                                  )
                                                ],
                                              ),
                                            )

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Icon(Icons.arrow_right_alt_sharp),
                    )),
              ),
            );
    
  }
}