import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'tabbar/chooseAppointment.dart';
import 'tabbar/confirmation.dart';
import 'tabbar/yourInfo.dart';

int selectedTabIndex = 1;
ValueNotifier<bool> changeNotifier = ValueNotifier<bool>(false);

class FirstConsultation extends StatefulWidget {
  const FirstConsultation({Key? key}) : super(key: key);

  @override
  State<FirstConsultation> createState() => _FirstConsultationState();
}

class _FirstConsultationState extends State<FirstConsultation> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: const Color(0xfff8f7f1),
        title: Row(
          children: [
            SizedBox(
              height: 60,
              width: 150,
              child: InkWell(
                child: Image.asset(
                  'assets/img/Lyn_logo_rgb_dark_brown-1.png',
                  fit: BoxFit.contain,
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(width: 20),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'individuals',
                  style: TextStyle(fontSize: 20, color: Color(0xff250f02)),
                )),
            const SizedBox(width: 20),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'business',
                  style: TextStyle(fontSize: 20, color: Color(0xff250f02)),
                )),
            const SizedBox(width: 20),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'about',
                  style: TextStyle(fontSize: 20, color: Color(0xff250f02)),
                )),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 35, top: 35, right: 10),
            child: SizedBox(
              width: 130,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    side: const MaterialStatePropertyAll(
                        BorderSide(width: 3, color: Color(0xffe35e36))),
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xfff8f7f1)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)))),
                child: Text('activate',
                    style:
                        GoogleFonts.montserrat(color: const Color(0xffe35e36))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35, top: 35, right: 80),
            child: SizedBox(
              width: 180,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    side: const MaterialStatePropertyAll(
                        BorderSide(width: 3, color: Color(0xffe35e36))),
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xfff8f7f1)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)))),
                child: Text('free consultation',
                    style:
                        GoogleFonts.montserrat(color: const Color(0xffe35e36))),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 40),
            Center(
                child: Text('Begin by finding a time to meet us.',
                    style: GoogleFonts.montserrat(fontSize: 45))),
            const SizedBox(height: 20),
            Container(),
            SizedBox(
                height: h * .79,
                width: w * .85,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: ValueListenableBuilder(
                    valueListenable: changeNotifier,
                    builder: (BuildContext context, value, Widget? child) {
                      if(changeNotifier.value== true){
                        selectedTabIndex = 2;
                      }
                      return getTabsWidget(selectedTabIndex);
                    },
                  ),
                )),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: w * .15,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            height: 200, width: 150),
                        child: Image.asset(
                          'assets/img/01.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Thirath Chau, MD',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                                const SizedBox(height: 10),
                                Text(
                                    'Dr. Chau is a Family Medicine physician with over a decade of experience in managing complex chronic medical conditions. He serves as Lyn Health’s Chief Medical Officer with a special interest in serving communities that need great quality and accessible care. He is board certified by the American Board of Family Medicine and the American Board of Wound Management.',
                                    style: GoogleFonts.montserrat(fontSize: 18),
                                    overflow: TextOverflow.visible),
                              ]),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            height: 200, width: 150),
                        child: Image.asset(
                          'assets/img/eric_bautista.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Eric Bautista, MD',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                                const SizedBox(height: 10),
                                Text(
                                    'An exceptional highly qualified provider, Dr. Eric Bautista serves as Lyn\'s Medical Director, taking a fresh, human-centered approach to people with multiple conditions. He obtained his bachelor\'s degree at Williams College, medical degree at the University of Washington School of Medicine, and internal medicine residency training at Kaiser San Francisco. In his spare time he loves to surf and ski, and enjoys traveling and studying other cultures.',
                                    style: GoogleFonts.montserrat(fontSize: 18),
                                    overflow: TextOverflow.visible),
                              ]),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            height: 200, width: 150),
                        child: Image.asset(
                          'assets/img/03.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Jessica Luna-Oliver',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                                const SizedBox(height: 10),
                                Text(
                                  'With over 30 years of experience as a Nurse in the healthcare industry, Jessica is a dedicated and passionate Care Partner at Lyn. Her vast background gives her a unique specialty to guide Members with multiple chronic conditions to meet their goals. Her passion is to guide, teach and listen to each member to inspire and cultivate a healthier lifestyle. Jessica is a proud grandmother of 8, and loves to bake.',
                                  style: GoogleFonts.montserrat(fontSize: 18),
                                  overflow: TextOverflow.visible,
                                ),
                              ]),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: w,
              height: h * .2,
              color: const Color(0xfff8f7f1),
              padding: EdgeInsets.symmetric(horizontal: w * .1, vertical: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Text('Privacy & Security',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 15))),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Text('Terms of use',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 15))),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Text('Privacy policy',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 15))),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                              ' \u00a9 2023. Lyn Health, Inc. All rights reserved.',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 15)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'If you, a friend or a loved one are having suicidal thoughts, call the National Suicide Prevention Lifeline at 800-273-8255 (800-273-TALK) for free and confidential support. It is open 24 hours a day, seven days a week. For crisis support in Spanish, call 888-628-9454. The Trevor Project, a suicide prevention counseling service for the LGBTQ+ community, can be reached at 866-488-7386.',
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 3,
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 15),
                          )
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
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
