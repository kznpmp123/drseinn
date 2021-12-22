import 'package:kzn/bottom_nav/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

String url ='https://drseinn.com';

Future fetchWpPosts() async {
  final response = await http.get(Uri.parse(
    "https://drseinn.com/index.php/wp-json/wp/v2/posts?per_page=100",
    // headers: {"Accept: application/json"}
  ));

  var covetedDatatoJson = jsonDecode(response.body);
  return covetedDatatoJson;
}


Future fetchWpPostImageUrl(String href ) async {

  final response = await http.get(Uri.parse(href), headers: {"Accept": "application/json"});
  var covetedDatatoJson = jsonDecode(response.body);
  print(covetedDatatoJson);
  return covetedDatatoJson;
}

class Blog extends StatefulWidget {
  // const Blog({Key? key}) : super(key: key);
  @override
  _BlogState createState() => _BlogState();
}
class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.indigo),
        backgroundColor: Colors.white,
        title: Center(
          child: Text("𝐃𝐫 𝐒𝐞𝐢𝐧𝐧 𝐊𝐧𝐨𝐰𝐥𝐞𝐝𝐠𝐞 𝐁𝐥𝐨𝐠𝐬", style: TextStyle(fontSize: 18.0,
                letterSpacing: 1.0,
                color: Colors.green
            ),),
        ),
        ),

      body: FutureBuilder(
        future: fetchWpPosts(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                Map wppost = snapshot.data[index];

                return PostTile(
                    href: wppost["_links"]["wp:featuredmedia"][0]["href"],
                    title: wppost["title"]["rendered"].replaceAll("#038;", ""),
                    desc: wppost["excerpt"]["rendered"],
                    content: wppost["content"]["rendered"]);
              },);
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}


class PostTile extends StatefulWidget {
  const PostTile({Key key, this.href, this.title, this.desc, this.content}) : super(key: key);

  final String href, title, desc, content;

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  var imageUrl = "";
  Widget shortDescritionView (){
    return Html(
      data: widget.desc,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Post(
          desc: widget.content,
          imageUrl: imageUrl,
          title: widget.title,
        )));
      },
      child: Container(
        height: 120,
        child: Card(
          elevation: 5,
          margin: EdgeInsets.only(top: 8),
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder(
                future: fetchWpPostImageUrl(widget.href),
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if(snapshot.hasData){
                    imageUrl = snapshot.data["guid"]["rendered"];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(snapshot.data['guid']["rendered"],
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover

                      ),
                    );
                  }
                  if(snapshot.hasError){
                    return Text(snapshot.error.toString());
                  }

                  return Center(child: CircularProgressIndicator());
                },
              ),

              SizedBox(width: 8),

              Expanded(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(widget.title,
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)
                  ),
                ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: shortDescritionView(),
                  )),
                ],)),
              SizedBox(width: 5),

            ],
          ),
        ),
      ),
    );
  }
}


