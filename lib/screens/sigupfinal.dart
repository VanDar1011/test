import 'package:flutter/material.dart';

class signupfinal extends StatefulWidget {
  const signupfinal({super.key});

  @override
  State<signupfinal> createState() => _signupfinalState();
}

class _signupfinalState extends State<signupfinal> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Đăng kí hội viên',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Bạn vui lòng xác nhận các thông tin sau',
              style: TextStyle(fontSize: 20),
            )),
            Container(
              color: Colors.grey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('1.Thông tin cá nhân'),
                        Text('Chỉnh sủa'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text('Họ và tên'),
                        ),
                        Text('xxxxxx'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text('Ngày tháng năm sinh'),
                        ),
                        Text('xxxxxx'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text('Giới tính'),
                        ),
                        Text('xxxxxx'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text('Quốc tịch'),
                        ),
                        Text('xxxxxx'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text('Số CMND/CCCD/Hộ chiếu'),
                        ),
                        Text('xxxxxx'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('1.Thông tin cá nhân'),
                        Text('Chỉnh sủa'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text('Số điện thoại'),
                        ),
                        Text('xxxxxx'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text('Thư viện tử'),
                        ),
                        Text('xxxxxx'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefirst = value!;
                      });
                    },
                  ),
                  Text('Tôi đã đọc và dồng ý hết điều khoản'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text('Đăng ký'),
            ),
          ],
        ),
      ),
    );
  }
}
