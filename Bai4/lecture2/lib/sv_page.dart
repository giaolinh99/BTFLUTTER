import 'package:flutter/material.dart';
import 'models/sinhvien.dart';

class SvPage extends StatelessWidget {
  Map<String, dynamic> sinhvien;

// SinhVien sinhvien;
  SvPage({Key key, this.sinhvien}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(sinhvien);
    return Scaffold(
        appBar: AppBar(
          title: Text('${sinhvien['name']}'),

        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Image.network( sinhvien['avatar'], height: 250, ),
            ),
            Text('Thông tin chi tiết',style: TextStyle(fontSize: 20),),
            Text('ma sv: ' + '${sinhvien['id'].toString()}',style: TextStyle(fontSize: 20),),
            Text('Ho ten: ' + '${sinhvien['name']}',style: TextStyle(fontSize: 20),),
            Text('age: ' + '${sinhvien['age'].toString()}',style: TextStyle(fontSize: 20),),
            Text('adress: ' + '${sinhvien['address']}',style: TextStyle(fontSize: 20),),

          ],


          //
          // child:
        ));
  }
}
