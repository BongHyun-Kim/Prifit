import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(DropDown());
}

class DropDown extends StatefulWidget {
  DropDown({Key? key}) : super(key: key);


  @override
  _DropDownState createState() => _DropDownState();
}

// var a = SizedBox(
//   child:
//   Text('안녕'),
// );

class _DropDownState extends State<DropDown> {

  var a = 0;

  var num = [0, 0, 0];

  var name = ['김영숙','홍길동','피자집'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Text(a.toString()),
              onPressed: (){
                setState(() {
                  a++;
                });
              },
            ),
            appBar: AppBar( title: Text('연락처앱')),
            // body: ListView(children: [
            //   Row(children: [Icon(Icons.account_circle_outlined), Text('홍길동')]),
            //   Row(children: [Icon(Icons.account_circle_outlined), Text('홍길동')]),
            //   Row(children: [Icon(Icons.account_circle_outlined), Text('홍길동')])
            // ]),
            body: ListView.builder( // 리스트 반복출력 -> ListView.builder
              itemCount: 3,
              itemBuilder: (context, i){
                return  ListTile(
                  leading: Text(num[i].toString()),
                  title: Text(name[i]),
                  trailing: TextButton(onPressed: (){
                    setState(() {
                      num[i]++;
                    });
                  }, child: Text('좋아요')),
                );
              },
            ),
            bottomNavigationBar: BottomIcon()));
  }
}

class BottomIcon extends StatelessWidget {
  const BottomIcon({Key? key}) : super(key: key);

  @override
  build(context) {
    return BottomAppBar(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child:
              IconButton(onPressed: null, icon: Icon(Icons.call)),
            ),
            Container(
                child:
                IconButton(onPressed: null, icon: Icon(Icons.message))
            ),
            Container(
                child:
                IconButton(onPressed: null, icon: Icon(Icons.contact_page_rounded))
            ),
          ],
        )

    );
  }
}

