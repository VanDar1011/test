import 'package:flutter/material.dart';
const List<String> list = <String>['Ông', 'Bà', 'Anh', 'Chị'];
const List<String> list1 = <String>['VN', 'En', 'Japanes'];
const List<String> list2 = <String>['CCCD', 'CNND'];
const List<String> list3 = <String>['Nam', 'Nữ'];
class InforUser extends StatefulWidget {
  const InforUser({super.key});

  @override
  State<InforUser> createState() => _InforUserState();
}

class _InforUserState extends State<InforUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.chevron_left_rounded),
          color: Colors.white,
          onPressed: () {},
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
          child: Text(
            "Đăng kí hội viên",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Đăng kí ngay để trở thành hội viên Airlines CLub',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Text(
                    'Họ và tên',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Text(
                    'Vui lòng điền đầy đủ theo CCCD/CMND/Hộ chiếu',
                    style: TextStyle(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Danh xưng'),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 90,
                            child: DropdownButtonExample(),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('Họ'),
                          SizedBox(
                            width: 100,
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
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Tên Đệm'),
                          SizedBox(
                            width: 100,
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
                      Column(
                        children: [
                          Text('Tên'),
                          SizedBox(
                            width: 100,
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Text('Quốc tịch')),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: DropdownButtonQtich(),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Giấy tờ tùy thân'),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 90,
                            child: DropdownButtonCCCD(),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('CCCD/CMND'),
                          SizedBox(
                            width: 100,
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
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Ngày tháng năm'),
                          SizedBox(
                            width: 100,
                            height: 37,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 0),
                                suffixIcon: Icon(Icons.calendar_month),
                                // Điều chỉnh độ cao ở đây
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
                      Column(
                        children: [
                          Text('Giới tính'),
                          Container(
                            width: 90,
                            child: DropdownButtonGioitinh(),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text('Tiếp tục'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//// danh xung
class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      alignment: Alignment.center,
      icon: const Icon(Icons.arrow_drop_down_rounded),
      elevation: 26,
      style: const TextStyle(color: Colors.deepPurple),
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
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

//////////////////qtich
class DropdownButtonQtich extends StatefulWidget {
  const DropdownButtonQtich({super.key});

  @override
  State<DropdownButtonQtich> createState() => DropdownButtonQtichState();
}

class DropdownButtonQtichState extends State<DropdownButtonQtich> {
  String dropdownValue = list1.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      alignment: Alignment.center,
      icon: const Icon(Icons.arrow_drop_down_rounded),
      elevation: 26,
      style: const TextStyle(color: Colors.deepPurple),
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
      items: list1.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

/////cccd
class DropdownButtonCCCD extends StatefulWidget {
  const DropdownButtonCCCD({super.key});

  @override
  State<DropdownButtonCCCD> createState() => DropdownButtonCCCDState();
}

class DropdownButtonCCCDState extends State<DropdownButtonCCCD> {
  String dropdownValue = list2.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      alignment: Alignment.center,
      icon: const Icon(Icons.arrow_drop_down_rounded),
      elevation: 26,
      style: const TextStyle(color: Colors.deepPurple),
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
      items: list2.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownButtonGioitinh extends StatefulWidget {
  const DropdownButtonGioitinh({super.key});

  @override
  State<DropdownButtonGioitinh> createState() => DropdownButtonGioitinhState();
}

class DropdownButtonGioitinhState extends State<DropdownButtonGioitinh> {
  String dropdownValue = list3.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      alignment: Alignment.center,
      icon: const Icon(Icons.arrow_drop_down_rounded),
      elevation: 26,
      style: const TextStyle(color: Colors.deepPurple),
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
      items: list3.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


