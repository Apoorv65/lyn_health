import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../first_consultation_mob.dart';

class ChooseAppointment extends StatefulWidget {
  const ChooseAppointment({Key? key}) : super(key: key);

  @override
  State<ChooseAppointment> createState() => _ChooseAppointmentState();
}

class _ChooseAppointmentState extends State<ChooseAppointment> {
  DateTime today = DateTime.now();
  DateTime? selectedValue;

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      today = selectedDay;
      selectedValue = selectedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: h,
        width: w,
        child: Column(
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
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            right: BorderSide(color: Colors.black12),
                            top: BorderSide(color: Colors.black12),
                            left: BorderSide(color: Colors.black12),
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 3.0,
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
                  left: w * .5 - (w * .21),
                  right: w * .5 - (w * .21),
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
            const SizedBox(height: 10),
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
                      style: GoogleFonts.montserrat(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Flexible(
              fit: FlexFit.tight,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .55,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TableCalendar(
                          firstDay: DateTime.now(),
                          lastDay: DateTime(2050),
                          focusedDay: today,
                          onDaySelected: _onDaySelected,
                          availableGestures: AvailableGestures.all,
                          selectedDayPredicate: (day) => isSameDay(day, today),
                          headerStyle: HeaderStyle(
                              leftChevronIcon: const Icon(Icons.chevron_left_rounded,
                                  color: Colors.black),
                              rightChevronIcon: const Icon(Icons.chevron_right_rounded,
                                  color: Colors.black),
                              formatButtonVisible: false,
                              titleCentered: true,
                              titleTextStyle: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold)),
                          calendarStyle: const CalendarStyle(
                            selectedDecoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            todayDecoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          daysOfWeekStyle: const DaysOfWeekStyle(
                              weekendStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              weekdayStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 50),
                        Text(today.toString(),
                            style: GoogleFonts.montserrat(fontSize: 20)),
                        const SizedBox(height: 25),
                        Text('Time Zone:  ',
                            style: GoogleFonts.montserrat(fontSize: 18)),
                        Text('India Standard Time (GMT+05:30)'.toUpperCase(),
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (selectedValue != null &&
                                      selectedValue == today) {
                                    changeNotifier_mob.value = 1;
                                    print(changeNotifier_mob.value);
                                  }
                                });
                              },
                              child: Container(
                                width: 150,
                                height: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                child: Center(
                                  child: Text(
                                    TimeOfDay.fromDateTime(DateTime.now())
                                        .format(context),
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
