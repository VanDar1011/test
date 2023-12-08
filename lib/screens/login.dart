import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool valuefirst = false;
  String userName = '';
  String passWord = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffE0E9F1),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                child: Image.asset(
                  'assets/images/flynen.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 180,
                left: 20,
                right: 20,
                height: 300,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Chào mừng đến với',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            TextSpan(
                              text: ' Airlines Clubs',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Tận hưởng trải nghiệm trọn vẹn hơn',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Số thẻ hội viên/ Email',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextField(
                          onChanged: (text) {
                            userName = text;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0), // Điều chỉnh độ cao ở đây
                          ),
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Mật khẩu',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextField(
                          onChanged: (text) {
                            passWord = text;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0), // Điều chỉnh độ cao ở đây
                          ),
                          autofocus: true,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Quên mật khẩu?',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'Ghi nhớ mật khẩu',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
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
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 500,
                left: 40,
                right: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print(userName);
                    print(passWord);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text('Đăng nhập'),
                ),
              ),
              Positioned(
                  top: 550,
                  left: 85,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Chưa có tài khoản?',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        TextSpan(
                            text: 'Đăng kí ngay',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
