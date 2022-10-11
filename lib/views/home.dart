part of 'pages.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Mission 1")),
        body: Container(

            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors:[
                      Colors.white,
                      Colors.blue
                    ]
                )
            ),

            width: double.infinity,
            height: double.infinity,
            child: Column(
                children:[

                  //beginning of top section
                  Flexible(
                    flex: 2,
                    child:Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset(
                                'assets/image/hotel1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(alignment: Alignment.topRight,
                                child: MaterialButton(
                                    onPressed: (){},
                                    color: Colors.white,
                                    child: Icon(
                                        Icons.favorite,
                                        size:24
                                    ),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder()
                                ))
                          ],
                        )

                    ),
                  ),
                  // end of top section

                  // start of middle section
                  Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: SizedBox.fromSize(
                                  size: const Size.fromRadius(40),
                                  child: Image.asset('assets/image/hotel2.jpg', fit: BoxFit.cover)
                              )
                          ),

                          SizedBox(width: 10),

                          ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: SizedBox.fromSize(
                                  size: const Size.fromRadius(40),
                                  child: Image.asset('assets/image/hotel3.jpg', fit: BoxFit.cover)
                              )
                          ),

                          SizedBox(width: 10),

                          ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: SizedBox.fromSize(
                                  size: const Size.fromRadius(40),
                                  child: Image.asset('assets/image/hotel4.jpg', fit: BoxFit.cover)
                              )
                          ),

                          SizedBox(width: 10),

                          ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: SizedBox.fromSize(
                                  size: const Size.fromRadius(40),
                                  child: Image.asset('assets/image/hotel5.jpg', fit: BoxFit.cover)
                              )
                          ),

                        ],
                      )

                  ),

                  // start of text section

                  Flexible(
                      flex: 5,
                      child: ListView(
                        padding: const EdgeInsets.all(15),
                        children: [

                          Center(
                              child: const Text("Welcome to Golden Tulip Holland Batu",
                                  textScaleFactor: 1.4,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),

                          Padding(
                              padding: EdgeInsets.all(8.0),
                              child: const Text("The 4-star Golden Tulip Holland Resort is ideally located "
                                  "in the heart of leisure place in Batu, with easy access to "
                                  "family recreational place and entertainments. It offers two "
                                  "food & beverage venues, swimnming pools, a spa, a fitness "
                                  "center, a kids playground and meeting room facilities which "
                                  "cater up to 2000 person.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                  )
                              )
                          ),

                          Padding(
                              padding: EdgeInsets.all(8.0),
                              child: const Text("Golden Tulip Holland Resort offers the kind of facilities "
                                  "and services that make travelling with children a breeze. "
                                  "The hotel is geared towasrds the needs and requirements of "
                                  "all families, big and small. Our hotel offers various "
                                  "activities for kids, along with a pool/slide.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                  )
                              )
                          ),

                          Padding(
                              padding: EdgeInsets.all(8.0),
                              child: const Text("Try our tempting menu of drinks and light meals available "
                                  "24 hours. When you feel the need of food and beverage, we "
                                  "are ready to serve you.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                  )
                              )
                          ),

                          Align(alignment: Alignment.bottomRight,
                              child: ElevatedButton(
                                onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.black
                                  ),
                                child: const Text("Book Now",
                                style: TextStyle(fontSize: 20))
                              )

                          )

                        ],
                      )
                  ),

                  // end of text section


                ]
            )
        )
    );
  }

}