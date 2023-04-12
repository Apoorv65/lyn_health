import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../first_consultation_mob.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: ClipPath(
                  clipper: MyFirstPolygon(),
                  child:  Container(
                      height: 65,
                      width: w*.33,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        border:const Border(
                          right: BorderSide(color: Colors.black12),
                          top: BorderSide(color: Colors.black12),
                          left: BorderSide(color: Colors.black12),
                          bottom: BorderSide(color: Colors.black12),
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
                left: w*.5-(w*.21),
                right: w*.5-(w*.21),
                child: ClipPath(
                  clipper: MySecondPolygon(),
                  child: Container(
                      height: 65,
                      width: w * .36,
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
                  child:  Container(
                      height: 65,
                      width: w*.33,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          right: BorderSide(color: Colors.black12),
                          top: BorderSide(color: Colors.black12),
                          left: BorderSide(color: Colors.black12),
                          bottom: BorderSide(color: Colors.black,
                              width: 3.0,),
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
            ],),

          SizedBox(height: MediaQuery.of(context).size.height * .05),
          Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First  Last',
                        style: GoogleFonts.montserrat(fontSize: 16)),
                    const SizedBox(height: 5),
                    Text('First Consultation with Lyn Health',
                        style: GoogleFonts.montserrat(fontSize: 25)),
                    const SizedBox(height: 15),
                    Text('Thursday March 30, 2023',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontSize: 18)),
                    const SizedBox(height: 10),
                    Text('9:00am IST',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontSize: 18)),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        const Icon(Icons.location_on),
                        Text('Lyn Health will call you',
                            style: GoogleFonts.montserrat()),
                      ],
                    ),
                    Text('First Consultation', style: GoogleFonts.montserrat()),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  changeNotifier_mob.value = 0;
                                  selectedTabIndex = 1;
                                });
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.black),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                              child: Text('Cancel',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          flex: 2,
                          child: SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.black),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                              child: Text('Reschedule',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                side: const MaterialStatePropertyAll(
                                    BorderSide(color: Colors.black)),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                            child: Text('Add to iCal/Outlook',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                side: const MaterialStatePropertyAll(
                                    BorderSide(color: Colors.black)),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                            child: Text('Add to Google',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black)),
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
