import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';


class Technology extends StatefulWidget {
  @override
  _TechnologyState createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
  Map newsData;

  fetchWorldWideData()async{
    http.Response response= await http.get('https://newsapi.org/v2/everything?' + 'q=tech&' + 'sortBy=popularity&' + 'apiKey=4eac28bee74a481fb1273bf5b7a5a83a');

    setState(() {
      newsData=json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchWorldWideData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      appBar: AppBar(title: Text('Technology News', style: TextStyle(color: Color(0xFF99aab5)),),
        backgroundColor: Color(0xFF23272a),
        iconTheme: IconThemeData(color: Color(0xFF99aab5)),),
      body: newsData==null?Center(child: CircularProgressIndicator(),):PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index){
          return Container(
              color: Color(0xFF2c2f33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      height: 250,
                      child: Image.network(newsData['articles'][index]['urlToImage'], fit: BoxFit.fill,loadingBuilder: (context, child, progress){
                        return progress==null?child:Center(child: CircularProgressIndicator(),);
                      },)),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(newsData['articles'][index]['title'], style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(newsData['articles'][index]['source']['name'], style: TextStyle(color: Color(0xFF7289da)),),
                        Text(newsData['articles'][index]['publishedAt'],style: TextStyle(color: Color(0xFF7289da)),),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: newsData['articles'][index]['content']==null?Text(newsData['articles'][index]['description'], style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),):Text(newsData['articles'][index]['content'], style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),),
                  ),
                ],
              )
          );
        },

        itemCount: newsData['articles'].length,
      ),
    );
  }
}
