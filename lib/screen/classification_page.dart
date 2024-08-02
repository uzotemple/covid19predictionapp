import 'package:flutter/material.dart';

class ClassificationModule extends StatefulWidget {
  const ClassificationModule({super.key});

  @override
  State<ClassificationModule> createState() => _ClassificationModuleState();
}

class _ClassificationModuleState extends State<ClassificationModule> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _patinetnameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();


  


  void onDoctorPage() {
    if(_formKey.currentState!.validate()){
    Navigator.pushNamed(context, "/onsymptomchecker");
  }
  }

  void onBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Classification Module",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: onBack,
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.white,
          )
        ],
        backgroundColor: Color(0xFFFF5B5B),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Classification and Identification Module",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF5B5B),
                ),
              ),
            ),
            Text(
              "Note: Fill all Entries",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Color(0xFFFF5B5B),
              ),
            ),

            Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _patinetnameController,
                        decoration: InputDecoration(
                          labelText: "Patient Name",
                          labelStyle: TextStyle(
                            color: Color(0xFFFF5B5B),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 245, 115, 106)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color(0xFFFF5B5B),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter patient name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30.0),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _genderController,
                        decoration: InputDecoration(
                          labelText: "Gender",
                          labelStyle: TextStyle(
                            color: Color(0xFFFF5B5B),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 245, 115, 106)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          // prefixIcon: const Icon(
                          //   Icons.email,
                          //   color: Color(0xFFFF5B5B),
                          // ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter patinet gender';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30.0),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _ageController,
                        decoration: InputDecoration(
                          labelText: "Age",
                          labelStyle: TextStyle(
                            color: Color(0xFFFF5B5B),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 245, 115, 106)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          // prefixIcon: const Icon(
                          //   Icons.email,
                          //   color: Color(0xFFFF5B5B),
                          // ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter patient age';
                          }
                          return null;
                        },
                      ),
                                        
                      const SizedBox(height: 40.0),
                      ElevatedButton(
                        onPressed:  onDoctorPage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF5B5B),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 12.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: const Size(400, 50),
                        ),
                        child: const Text(
                          'Continue',
                          style:
                              TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),

            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width * 0.95,
            //     child: TextField(
            //       decoration: InputDecoration(
            //         labelText: "Patient Name",
            //         labelStyle: TextStyle(
            //           color: Color(0xFFFF5B5B),
            //         ),
            //         filled: true,
            //         fillColor: Colors.white,
            //         enabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15),
            //           borderSide: const BorderSide(
            //               color: Color.fromARGB(255, 245, 115, 106)),
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15),
            //           borderSide: const BorderSide(color: Colors.blue),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width * 0.95,
            //     child: TextField(
            //       decoration: InputDecoration(
            //         labelText: "Gender",
            //         labelStyle: TextStyle(
            //           color: Color(0xFFFF5B5B),
            //         ),
            //         filled: true,
            //         fillColor: Colors.white,
            //         enabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15),
            //           borderSide: const BorderSide(
            //               color: Color.fromARGB(255, 245, 115, 106)),
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15),
            //           borderSide: const BorderSide(color: Colors.blue),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width * 0.95,
            //     child: TextField(
            //       decoration: InputDecoration(
            //         labelText: "Age",
            //         labelStyle: TextStyle(
            //           color: Color(0xFFFF5B5B),
            //         ),
            //         filled: true,
            //         fillColor: Colors.white,
            //         enabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15),
            //           borderSide: const BorderSide(
            //               color: Color.fromARGB(255, 245, 115, 106)),
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15),
            //           borderSide: const BorderSide(color: Colors.blue),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 50,
            // ),
            // Container(
            //   width: MediaQuery.of(context).size.width * 0.9,
            //   child: ElevatedButton(
            //     onPressed: onDoctorPage,
            //     child: Text("CONTINUE"),
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Color(0xFFFF5B5B),
            //       foregroundColor: Color(0xFFFFFFFF),
            //       elevation: 5.0,
            //       padding: EdgeInsets.symmetric(vertical: 15.0),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
