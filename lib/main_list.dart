import 'package:flutter/material.dart';
import 'package:management/strings.dart';

class BuildMainList extends StatefulWidget {
  @override
  _BuildMainListState createState() => _BuildMainListState();
}

class _BuildMainListState extends State<BuildMainList> {
  Color lkcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Popular Things",
              style: TextStyle(color: txtColor),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/details");
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          // Positioned(
                          //   child: IconButton(
                          //     icon: Icon(Icons.favorite_border),
                          //     onPressed: () {},
                          //   ),
                          // ),
                          // Align(
                          //   alignment: Alignment.bottomLeft,
                          //   child: IconButton(
                          //     icon: Icon(Icons.favorite_border),
                          //     onPressed: () {},
                          //   ),
                          // ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                  height: 160,
                                  child:
                                      Image.asset("assets/images/pyramid.jpg")),
                              // child: Container(
                              //   height: 200,
                              //   decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //       image: AssetImage("assets/images/pyramid.jpg"),
                              //       fit: BoxFit.fill,
                              //       //  alignment: Alignment.topCenter,
                              //     ),
                              //   ),
                              //   width: 160
                              // ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: lkcolor,
                            ),
                            onPressed: () {
                              setState(() {
                                if (lkcolor == Colors.white)
                                  lkcolor = Colors.red;
                                else
                                  lkcolor = Colors.white;
                              });
                            },
                          ),
                        ],
                      ),
                      Text(
                        "health is welth",
                        style: TextStyle(fontSize: 10, color: Colors.purple),
                      ),
                      Text(
                        "Visit for shopping",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: txtColor),
                      ),
                      Text(
                        "Body Building",
                        style: TextStyle(color: txtColor),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
