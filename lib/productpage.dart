import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:master/second.dart';
import 'package:url_launcher/url_launcher.dart';

import 'product.dart';
import 'ratingbox.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.item});

  final Product item;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final String url="https://www.google.com/";
  final String _phone="+8801731090564";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.name,style: TextStyle(color: Colors.black),)

        ,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 250,
                          width: 200,
                          child: Image.asset("assets/${widget.item.image}"),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22)),
                            color: Colors.teal,
                          ),

                          // margin: EdgeInsets.all(25),
                          // padding: EdgeInsets.all(40),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Text(
                              " ${widget.item.name}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 27),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            
                            child: const Text(
                              "About:",
                              style: const TextStyle(fontSize: 25),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "${widget.item.des}",
                              style: const TextStyle(fontSize: 25),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(20),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.teal // Background color
                                        ),
                                    child: Icon(
                                      Icons.share,
                                      color: Colors.orange,
                                      size: 50,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ElevatedButton(
                                    onPressed: () async {
                                      final _call = 'tel:$_phone';
                                      final _text ='sms:$_phone';
                                      if (await canLaunch(_text)){
                                        await launch(_text);
                                      }
                                    }

                                    ,


                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                        Colors.deepPurpleAccent // Background color
                                    ),
                                    child: Icon(
                                      Icons.mail,
                                      color: Colors.orange,
                                      size: 50,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ElevatedButton(
                                    onPressed: ()  {
                                      FlutterPhoneDirectCaller.callNumber("${widget.item.number}");
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                        Colors.white // Background color
                                    ),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.red,
                                      size: 50,
                                    )),
                              ),
                            ),

                          ],
                        ),
                        RatingBox(),
                      ],
                    ),
                  ),
                  const Secondclass(),
                ]),
          ),
        ),
      ),
    );
  }
}
