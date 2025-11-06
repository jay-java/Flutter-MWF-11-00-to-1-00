import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MyFrom extends StatefulWidget {
  const MyFrom({super.key});

  @override
  State<MyFrom> createState() => _MyFromState();
}

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class _MyFromState extends State<MyFrom> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';

  String dropdownValue = list.first;
  String _gender = '';
  String _groupValue = 'gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form'), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Form(
            key: _globalKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _nameController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text('enter name'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter your name';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailController,
                    obscureText: true,
                    obscuringCharacter: '@',
                    decoration: InputDecoration(
                      label: Text('enter email'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter your email';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      borderRadius: BorderRadius.circular(10),

                      elevation: 16,
                      style: const TextStyle(color: Colors.blue),
                      underline: Container(height: 2, color: Colors.blue),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          if (value != null || value!.isNotEmpty) {
                            dropdownValue = value;
                          }
                          else{
                            print('select value ');
                          }
                        });
                      },
                      items:
                          list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 'male',
                      groupValue: _groupValue,
                      onChanged: (value) {
                        _gender = value!;
                        print(_gender);
                      },
                    ),
                    Text('Male', style: TextStyle(fontSize: 20)),
                    Radio(
                      value: 'female',
                      groupValue: _groupValue,
                      onChanged: (value) {
                        _gender = value!;
                        print(_gender);
                      },
                    ),
                    Text('Female', style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 50, right: 50),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty<Color>.fromMap(
                        <WidgetStatesConstraint, Color>{
                          WidgetState.any: Colors.blue,
                          WidgetState.pressed: Colors.yellow,
                          WidgetState.hovered: Colors.red,
                        },
                      ),
                    ),
                    onPressed: () {
                      _name = _nameController.text.trim();
                      _email = _emailController.text.trim();
                      _globalKey.currentState!.validate();
                    },
                    child: Text(
                      'Click here',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Text('Name : $_name', style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Text('Email : $_email', style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ],
      ),

      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: TextField(
      //         onChanged: (value){
      //           setState(() {
      //             _name = value;
      //           });
      //         },
      //         decoration: InputDecoration(
      //           label: Text('enter your name'),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: TextField(
      //         decoration: InputDecoration(
      //           label: Text('enter your email'),
      //         ),
      //         keyboardType: TextInputType.emailAddress,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: TextField(
      //         decoration: InputDecoration(
      //           label: Text('enter your contact'),
      //         ),
      //         keyboardType: TextInputType.phone,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: TextField(
      //         decoration: InputDecoration(
      //           label: Text('enter your password'),
      //         ),
      //         obscureText: true,
      //         obscuringCharacter: '*',
      //       ),
      //     ),
      //     SizedBox(height: 20,),
      //     Text('Name : ${_name}',style: TextStyle(fontSize: 20),)
      //   ],
      // ),
    );
  }
}
