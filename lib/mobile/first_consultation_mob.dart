import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tabbar/chooseAppointment.dart';
import 'tabbar/confirmation.dart';
import 'tabbar/yourInfo.dart';

int selectedTabIndex = 1;
ValueNotifier<bool> changeNotifier_mob = ValueNotifier<bool>(false);

class FirstConsultationMob extends StatefulWidget {
  const FirstConsultationMob({Key? key}) : super(key: key);

  @override
  State<FirstConsultationMob> createState() => _FirstConsultationMobState();
}

class _FirstConsultationMobState extends State<FirstConsultationMob>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  bool isClicked = true;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(
        milliseconds: 800,
      ),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfff8f7f1),
        title: InkWell(
          child: Image.asset(
            height: 40,
            'assets/img/Lyn_logo_rgb_dark_brown-1.png',
            fit: BoxFit.fitHeight,
          ),
          onTap: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (isClicked) {
                _controller.forward();
                setState(() {
                  isClicked = true;
                });
              } else {
                _controller.reverse();
                setState(() {
                  isClicked = false;
                });
              }
              isClicked = !isClicked;
            },
            icon: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                color: Colors.black,
                progress: _controller),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          !isClicked
              ? DelayedDisplay(
            delay: const Duration(seconds: 03),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'individuals',
                          style: GoogleFonts.kumbhSans(
                              color: Colors.black, fontSize: 20),
                        )),
                    const SizedBox(height: 20),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'business',
                          style: GoogleFonts.kumbhSans(
                              color: Colors.black, fontSize: 20),
                        )),
                    const SizedBox(height: 20),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'about',
                          style: GoogleFonts.kumbhSans(
                              color: Colors.black, fontSize: 20),
                        )),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          side: const MaterialStatePropertyAll(BorderSide(
                              width: 2, color: Color(0xff000000))),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color(0xffffffff)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(50)))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('activate',
                            style: GoogleFonts.montserrat(
                                color: const Color(0xff000000),
                                fontSize: 24)),
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          side: const MaterialStatePropertyAll(BorderSide(
                              width: 2, color: Color(0xff000000))),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color(0xffffffff)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(50)))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('free consultation',
                            style: GoogleFonts.montserrat(
                                color: const Color(0xff000000),
                                fontSize: 24)),
                      ),
                    ),
                  ]),
            ),
          )
              : DelayedDisplay(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * .08),
                  child: Text('Begin by finding a time to meet us.',
                       textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500, fontSize: 25)),
                ),
                const SizedBox(height: 20),
                SizedBox(
                    height: h,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ValueListenableBuilder(
                        valueListenable: changeNotifier_mob,
                        builder:
                            (BuildContext context, value, Widget? child) {
                          if (changeNotifier_mob.value == true) {
                            selectedTabIndex = 2;
                          }
                          return getTabsWidget(selectedTabIndex);
                        },
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: w * .1, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          height: 200,
                          'assets/img/01.jpeg',
                          fit: BoxFit.fitHeight,
                        ),
                        const SizedBox(height: 10),
                        Text('Thirath Chau, MD',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const SizedBox(height: 10),
                        Text(
                          'Dr. Chau is a Family Medicine physician with over a decade of experience in managing complex chronic medical conditions. He serves as Lyn Health’s Chief Medical Officer with a special interest in serving communities that need great quality and accessible care. He is board certified by the American Board of Family Medicine and the American Board of Wound Management.',
                          style: GoogleFonts.montserrat(fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),
                        Image.asset(
                          'assets/img/eric_bautista.jpeg',
                          fit: BoxFit.fitHeight,
                          height: 200,
                        ),
                        const SizedBox(height: 10),
                        Text('Eric Bautista, MD',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const SizedBox(height: 10),
                        Text(
                          'An exceptional highly qualified provider, Dr. Eric Bautista serves as Lyn\'s Medical Director, taking a fresh, human-centered approach to people with multiple conditions. He obtained his bachelor\'s degree at Williams College, medical degree at the University of Washington School of Medicine, and internal medicine residency training at Kaiser San Francisco. In his spare time he loves to surf and ski, and enjoys traveling and studying other cultures.',
                          style: GoogleFonts.montserrat(fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),
                        Image.asset(
                          'assets/img/03.jpeg',
                          fit: BoxFit.fitHeight,
                          height: 200,
                        ),
                        const SizedBox(height: 10),
                        Text('Jessica Luna-Oliver',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const SizedBox(height: 10),
                        Text(
                          'With over 30 years of experience as a Nurse in the healthcare industry, Jessica is a dedicated and passionate Care Partner at Lyn. Her vast background gives her a unique specialty to guide Members with multiple chronic conditions to meet their goals. Her passion is to guide, teach and listen to each member to inspire and cultivate a healthier lifestyle. Jessica is a proud grandmother of 8, and loves to bake.',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.montserrat(fontSize: 16),
                        ),
                      ]),
                ),
                const SizedBox(height: 30),
                Container(
                  color: const Color(0xfff8f7f1),
                  padding: EdgeInsets.symmetric(
                      horizontal: w * .1, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const Text('Privacy & Security',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 15))),
                        const SizedBox(height: 10),
                        InkWell(
                            onTap: () {},
                            child: const Text('Terms of use',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 15))),
                        const SizedBox(height: 10),
                        InkWell(
                            onTap: () {},
                            child: const Text('Privacy policy',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 15))),
                        const SizedBox(height: 20),
                        const Text(
                            ' \u00a9 2023. Lyn Health, Inc. All rights reserved.',
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 15)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'If you, a friend or a loved one are having suicidal thoughts, call the National Suicide Prevention Lifeline at 800-273-8255 (800-273-TALK) for free and confidential support. It is open 24 hours a day, seven days a week. For crisis support in Spanish, call 888-628-9454. The Trevor Project, a suicide prevention counseling service for the LGBTQ+ community, can be reached at 866-488-7386.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Color(0xff000000), fontSize: 15),
                        )
                      ]),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void onSelectTab(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}

Widget getTabsWidget(int index) {
  switch (index) {
    case 1:
      {
        return const ChooseAppointment();
      }
    case 2:
      {
        return const YourInfo();
      }
    case 3:
      {
        return const Confirmation();
      }

    default:
      return Container();
  }
}
