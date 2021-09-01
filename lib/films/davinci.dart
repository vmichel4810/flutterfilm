import 'package:flutter/material.dart';
import 'package:validation_flutter/films/array.dart';


class DaVinci extends StatefulWidget {
  const DaVinci({Key? key,required this.value}) : super(key: key);
  final int value ;
  @override
  _DaVinciState createState() => _DaVinciState();

}

class _DaVinciState extends State<DaVinci> {

  @override
  Widget build(BuildContext context) {
    // final filmLink = ModalRoute.of(context)?.settings.arguments;
    // print(filmLink);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          centerTitle: true,
          title: Text(filmsList[widget.value]['title'],
          style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    ),
          
          
          ),
        ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  // child: Text(filmsList[widget.value]['title'],
                  // style: TextStyle(
                  //     fontSize: 40,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.black,
                  //   ),
                  // ),
                ),
              ),
              //Permet d'avoir une ombre en-dessous
              Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    height: MediaQuery.of(context).size.height * .8,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      children: [
                        // Widget permettant de superposer les widget les uns sur les autres
                        Stack(
                          children: [
                            Center(
                              child: Container(
                              height: MediaQuery.of(context).size.height * .35,
                                 width: MediaQuery.of(context).size.width * .25,
                              decoration: BoxDecoration(
                                  // Permet de rajouter de l'arrondissement au niveau des angles du Container
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25)),
                                  image: DecorationImage(
                                      image: NetworkImage(filmsList[widget.value]['image']),
                                      fit: BoxFit.contain)),
                          ),
                            ),
                            Center(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 300,
                                  ),
                                  // Créer un Widget avec des bordures arrondies
                                  child: Column(
                                    children: [
                                      Text(filmsList[widget.value]['synopsis'],
                                        style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                      Text(filmsList[widget.value]['genre'],
                                        style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                      Text(filmsList[widget.value]['year'],
                                        style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                      Text(filmsList[widget.value]['actor'],
                                        style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        
                      ],
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
