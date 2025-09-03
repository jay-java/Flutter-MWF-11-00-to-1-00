import 'package:flutter/material.dart';

class MyFrom extends StatefulWidget {
  const MyFrom({super.key});

  @override
  State<MyFrom> createState() => _MyFromState();
}

class _MyFromState extends State<MyFrom> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';

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
                TextFormField(
                  controller:  _nameController,
                  decoration: InputDecoration(label: Text('enter name')),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'enter your name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller:  _emailController,
                  decoration: InputDecoration(label: Text('enter email')),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'enter your email';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20),
                TextButton(
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
                SizedBox(height: 20,),
                Text('Name : $_name',style: TextStyle(fontSize: 20),),
                SizedBox(height: 20,),
                Text('Email : $_email',style: TextStyle(fontSize: 20),)
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
