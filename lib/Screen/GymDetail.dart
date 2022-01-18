import 'package:flutter/material.dart';

void main() {
  runApp(GymDetail());
}

class GymDetail extends StatelessWidget {
  const GymDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ListView(
            children: <Widget>[
              Image.asset('assets/sample_image1.jpg'),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Row(
                  children: <Widget> [
                    Expanded(
                      child: buildDropdownButton(['1개월', '3개월', '6개월'], '3개월')
                    ),
                    Expanded(
                      child: buildDropdownButton(['옵션1', '옵션2', '옵션3'], '옵션1')
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text(
                    'A 헬스장',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500
                    ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Expanded(
                    child: Row(
                      children: <Widget> [
                        SizedBox(width: 20.0),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 5.0),
                        Text(
                            "5.0 stars",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0
                            )
                        ),
                      ],
                    ),
                  ),
                  Text(
                      "1500원",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30.0
                      )
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    child: Text(
                        "설명",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400
                        )
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                      child: Text(
                        "상세설명",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.grey.shade600
                        ),
                      )
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget> [
                  _buildAddToCartButton(),
                ]
              ),
            ],
          ),
        ],
      ),
    )
    );
  }

  Widget buildDropdownButton(List<String> items, String selectedValue) {
    return DropdownButton<String> (
      isExpanded: true,
      value: selectedValue,
      onChanged: (_) {},
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String> (
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget _buildAddToCartButton() {
    return Row(
      children: <Widget> [
        Expanded (
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0
            ),
            child: RaisedButton (
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)
              ),
              onPressed: () {},
              child: Text("회원권 구매하기"),
              color: Colors.black26,
              textColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}