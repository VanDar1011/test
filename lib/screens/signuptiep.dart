import 'package:flutter/material.dart';

const List<String> listCodePhone = <String>[
  'Việt Name(+84)',
  'United States(+1)',
  'Russia (Nga)(+7)',
  'Malaysia(+60)',
  'Indonesia(+62)',
  'Philippines(+63)'
];

class signuptiep extends StatefulWidget {
  const signuptiep({super.key});

  @override
  State<signuptiep> createState() => _signuptiepState();
}

class _signuptiepState extends State<signuptiep> {
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
            Container(
              margin: EdgeInsets.only(top: 40, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Thông tin liên hệ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Vui lòng điền đầy đủ thông tin số điện thoại và '
                'địa chỉ email để đảm bảo rằng chúng tôi có thể liên hệ với bạn kịp thời.',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Việc cung cấp số điện thoại/ email đồng nghĩa với việc'
                ' bạn đồng ý nhận các cuộc gọi/ email thông báo liên'
                ' quan đến chi tiết các chuyến bay từ Airlines.',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Mã quốc qia'),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        child: DropdownButtonSDT(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('Số điện thoại'),
                      SizedBox(
                        width: 200,
                        height: 37,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0), // Điều chỉnh độ cao ở đây
                          ),
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Text('Email'),
                ),
                SizedBox(
                  width: 350,
                  height: 37,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 0), // Điều chỉnh độ cao ở đây
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(60, 50, 20, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      foregroundColor: Colors.grey,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text('Quay lại', style: TextStyle(fontSize: 20)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 50, 20, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text('Tiếp tục', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownButtonSDT extends StatefulWidget {
  const DropdownButtonSDT({super.key});

  @override
  State<DropdownButtonSDT> createState() => DropdownButtonSDTState();
}

class DropdownButtonSDTState extends State<DropdownButtonSDT> {
  String dropdownValue = listCodePhone.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      alignment: Alignment.center,
      icon: const Icon(Icons.arrow_drop_down_rounded),
      elevation: 26,
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
      underline: Container(
        height: 1.5,
        color: Colors.black,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: listCodePhone.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
