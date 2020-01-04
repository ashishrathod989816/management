import 'package:flutter/material.dart';
import 'package:management/strings.dart';

class Details extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<Details> {
  Color lkColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;

    queryData = MediaQuery.of(context);
    return Scaffold(
    
      backgroundColor: background,
      body: Column(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
            
            image: DecorationImage(image: AssetImage("assets/images/pyramid.jpg"),fit: BoxFit.cover)
            ),
            height: queryData.size.height-50,
           
            // alignment: FractionalOffset.center,
            child: Stack(
              children: <Widget>[
                // Max Size
                Positioned(
                  top: 150,
                  child: Card(
                      elevation: 8,
                      color: background,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        width: queryData.size.width - 5,
                        height: queryData.size.height - 300,
                        alignment: Alignment.topLeft,
                        child: Container(
                         
                          height: 100,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(backgroundImage:AssetImage("assets/images/image.jpeg"),),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 50,
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Izabel Peattie",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Orgnizer",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                              FlatButton(
                                color: Colors.grey[600],
                                onPressed: () {},
                                child: Text("Follow"),
                              )
                            ],
                          ),
                        ),
                      )),
                ),
                Positioned(
                  top: 250,
                  child: Card(
                    elevation: 8,
                   color: Colors.grey[850],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      color:Colors.black12,
                      width: queryData.size.width - 5,
                      height: queryData.size.height - 350,
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 1,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "FRD,DEC 19TH - MON,DEC 27TH",
                                        style: TextStyle(fontSize: 10,color:txtColor),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Nocturnal and unusual visit",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,color: txtColor),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                        child: Text('Musee du louvre, paris',
                                            style: TextStyle(fontSize: 12,color: txtColor)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.favorite,
                                  color: lkColor,
                                ),
                                onTap: () {
                                  setState(() {
                                    if (lkColor == Colors.white) {
                                      lkColor = Colors.red;
                                    } else {
                                      lkColor = Colors.white;
                                    }
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            minWidth: queryData.size.width-10,
        color: Colors.purple,
              child: Text("Get Ticket"),
              onPressed: (){},
            )

        ],
      ),
    );
  }
}
