import 'package:flutter/material.dart';
import 'package:pdf/model.dart';
import 'package:pdf/reader.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0C9869),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text("PDF"),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Documentos de Estadisticas",
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: Document.doc_list
                      .map((doc) => ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Reader(doc)));
                            },
                            title: Text(
                              doc.doc_title!,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text("${doc.page_num!} Paginas"),
                            trailing: Text(doc.doc_date!),
                            leading: Icon(
                              Icons.picture_as_pdf,
                              color: Color(0xFF0C9869),
                              size: 28.0,
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
          )),
    );
  }
}
