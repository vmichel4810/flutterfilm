import 'package:flutter/material.dart';
import 'package:validation_flutter/films/davinci.dart';

import 'films/array.dart';

class AllFilm extends StatefulWidget {
  @override
  _AllFilmState createState() => _AllFilmState();
}

class _AllFilmState extends State<AllFilm> {
  int selectedIndex = 0;

  selectImage(int selectIndex) {
    setState(() {
      selectedIndex = selectIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(filmsList);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          centerTitle: true,
          title: Text('FILM',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      
                    ),),
        
          ),
        ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Align(
                  alignment: Alignment.center,
                  
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: filmsList.length,
                          itemBuilder: (context, index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: OutlinedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0))),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DaVinci(value: index))
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    children: [
                                      Image(
                                        width: 250,
                                        height: 350,
                                        image: NetworkImage(filmsList[index]['image']),
                                        fit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(filmsList[index]['title']),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(filmsList[index]['year'],
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
