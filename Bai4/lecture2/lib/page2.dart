import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:lecture2/read_Json.dart';

void main() => runApp(Page2());

class Page2 extends StatelessWidget {
  static List _items = [];

  Future<List<dynamic>> getData() async {

    _items = await readJson();
  }
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(

      body: Center(
        child: GridView.builder(
          itemCount: _items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0
        ),
          itemBuilder: (BuildContext context, int index){
            return Card(


              child: Column(
                  children:[
                    Container(
                      child : ListTile(
                      title: Image.asset(_items[index]["avatar"],height: 80,),

                      subtitle: Text(_items[index]["name"]),
                    ),),

                  ],
              ),
            );
          },

        ),
      ),
    );
  }
}
