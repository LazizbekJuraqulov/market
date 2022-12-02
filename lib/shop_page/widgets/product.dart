import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:market/provider.dart';
import 'package:provider/provider.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<HomeProvider>(context);
    return Container(
              height: MediaQuery.of(context).size.height * 0.47,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 24,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: 8,
                        right: 12,
                      ),
                      height: 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffffffff),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 104,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                image: DecorationImage(
                                    image: AssetImage("${count.foto[index]}"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  count.words[index].toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff222222),
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Color:",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xff9B9B9B)),
                                    ),
                                    Text(
                                      "Black",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xff222222)),
                                    ),
                                    SizedBox(
                                      width: 13,
                                    ),
                                    Text(
                                      "Size:",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xff9B9B9B)),
                                    ),
                                    Text(
                                      "L",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xff222222)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        count.kam(index);
                                      },
                                      child: Container(
                                          width: 36,
                                          height: 36,
                                          decoration: BoxDecoration(
                                              color: Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.1),
                                                    blurRadius: 1,
                                                    spreadRadius: 1,
                                                    offset: Offset(
                                                      2.0,
                                                      2.0,
                                                    ))
                                              ]),
                                          child: Image.asset(
                                              "assets/Icons/minus.png")),
                                    ),
                                    Container(
                                      width: 36,
                                      height: 36,
                                      alignment: Alignment.center,
                                      child: Text(
                                        count.varible[index].toString(),
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        count.kup(index);
                                      },
                                      child: Container(
                                          width: 36,
                                          height: 36,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.1),
                                                    blurRadius: 1,
                                                    spreadRadius: 1,
                                                    offset: Offset(
                                                      2.0,
                                                      2.0,
                                                    ))
                                              ]),
                                          child: Image.asset(
                                              "assets/Icons/Shape.png")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 86,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PopupMenuButton(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0))),
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                          child: Text("Add to favorites")),
                                      PopupMenuItem(
                                          child: Text("Delete from the list")),
                                    ];
                                  }),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: Text(
                                    "${count.varible[index] * count.narx[index]} \$"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            );
    
  }
}