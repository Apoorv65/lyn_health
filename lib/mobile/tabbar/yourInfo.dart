import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../first_consultation_mob.dart';

class YourInfo extends StatefulWidget {
  const YourInfo({Key? key}) : super(key: key);

  @override
  State<YourInfo> createState() => _YourInfoState();
}

class _YourInfoState extends State<YourInfo> {
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();

  bool btnValidate() {
    if ( _formKey.currentState!.validate()) {
      if( isChecked = true){
      setState(() {
        changeNotifier_mob.value = 2;
        selectedTabIndex = 3;
      });
      return true;
      }
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.grey;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: ClipPath(
                  clipper: MyFirstPolygon(),
                  child: Container(
                      height: 65,
                      width: w * .33,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        color: Colors.grey.shade200,
                        border:const Border(
                          right: BorderSide(color: Colors.black12),
                          top: BorderSide(color: Colors.black12),
                          left: BorderSide(color: Colors.black12),
                          bottom: BorderSide(
                            color: Colors.black12
                          ),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        'Choose Appointment',
                        style: GoogleFonts.kumbhSans(
                            textStyle: const TextStyle(
                          color: Colors.black,
                        )),
                      ))),
                ),
              ),
              Positioned(
                left: w * .5 - (w * .2),
                right: w * .5 - (w * .2),
                child: ClipPath(
                  clipper: MySecondPolygon(),
                  child: Container(
                         height: 65,
                        width: w * .36,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            right: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black12),
                            left: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black, width: 3),
                          ),
                        ),
                        child: Center(
                            child: Text(
                          'Your Info',
                          style: GoogleFonts.kumbhSans(
                              textStyle: const TextStyle(
                            color: Colors.black,
                          )),
                        ))),
                  ),
                ),
              Positioned(
                right: 0,
                child: ClipPath(
                  clipper: MyThirdPolygon(),
                  child: Container(
                      height: 65,
                      width: w * .33,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: const Border(
                          right: BorderSide(color: Colors.black12),
                          top: BorderSide(color: Colors.black12),
                          left: BorderSide(color: Colors.black12),
                          bottom: BorderSide(color: Colors.black12),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        'Confirmation',
                        style: GoogleFonts.kumbhSans(
                            textStyle: const TextStyle(
                          color: Colors.black,
                        )),
                      ))),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              setState(() {
                changeNotifier_mob.value = 0;
                selectedTabIndex = 1;
              });
            },
            child: Container(
                width: 280,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.arrow_back_ios),
                    Text(
                      'Edit Appointment Information'.toUpperCase(),
                      style: GoogleFonts.kumbhSans(
                          textStyle: const TextStyle(
                        color: Colors.black,
                      )),
                    ),
                  ],
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Consultation with Lyn Health',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    '30 minutes',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, color: Colors.grey),
                  ),
                  Text('March 31, 2023 at 10:30pm',
                      style: GoogleFonts.montserrat(
                          fontSize: 16, color: Colors.grey)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'First Name',
                          hintStyle: GoogleFonts.montserrat()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Last Name',
                          hintStyle: GoogleFonts.montserrat()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Phone Number',
                          hintStyle: GoogleFonts.montserrat()),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length != 10) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Email',
                          hintStyle: GoogleFonts.montserrat()),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return 'Please enter valid email address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'I would like to receive an SMS reminder before my appointment.',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Opt in to receive an appointment reminder via SMS. Message and data rates may apply. One message per appointment. Reply HELP for help or STOP to cancel.',
                                style:
                                    GoogleFonts.montserrat(color: Colors.grey),
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                maxLines: 3,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(Colors.black),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)))),
                          onPressed: () => isChecked ? btnValidate() : null,
                          child: Text(
                            'Complete Appointment »',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                              color: Colors.white,
                            )),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
