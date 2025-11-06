import 'package:flutter/material.dart';

class MyCRUD extends StatefulWidget {
  const MyCRUD({super.key});

  @override
  State<MyCRUD> createState() => _MyCRUDState();
}

class _MyCRUDState extends State<MyCRUD> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _globalKey = GlobalKey<FormState>();

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
                    controller: _nameController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text('enter contact'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter your contact';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _nameController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text('enter address'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter your address';
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _nameController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text('enter password'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter your password';
                      }
                      return null;
                    },
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  height: 60,
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
                      _globalKey.currentState!.validate();
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
