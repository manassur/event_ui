import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset('assets/svg/arrow-narrow-left.svg'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset('assets/svg/share.svg'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset('assets/svg/heart-1.svg'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 240,
                child: Stack(
                  children:[
                    Container(
                      width: double.infinity,
                    height: 240,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffc4c4c4),
                      image: DecorationImage(
                        image: AssetImage('assets/img.png'),
                            fit: BoxFit.cover
                      )
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:[
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x3d111827),
                                blurRadius: 16,
                                offset: Offset(4, 8),
                              ),
                            ],
                            color: const Color(0xff111827),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8, ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              SizedBox(
                                width: 16,
                                height: 16,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child:SvgPicture.asset('assets/svg/video.svg'),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                "Watch video",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const SizedBox(
                child: Text(
                  "California Art Festival: 2022 Dana Point 29-30",
                  style: TextStyle(
                    color: Color(0xff111827),
                    fontSize: 20,
                    fontFamily: "Noto Sans JP",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  SizedBox(
                    width: 327,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xfff9fafb),
                              ),
                              padding: const EdgeInsets.all(4),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:const [
                                  Text(
                                    "29",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff111827),
                                      fontSize: 14,
                                      fontFamily: "Noto Sans JP",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Mar",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff9ca3af),
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:const [
                                Text(
                                  "Tuesday",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 14,
                                    fontFamily: "Noto Sans JP",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "10:00 PM - End",
                                  style: TextStyle(
                                    color: Color(0xff9ca3af),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 60),
                        SizedBox(
                          width: 74,
                          height: 36,
                          child: Stack(
                            children:[Positioned.fill(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white, width: 2, ),
                                  ),
                                  child:Image.asset('assets/avatar.png'),
                                ),
                              ),
                            ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white, width: 2, ),
                                    ),
                                    child: Image.asset('assets/avatar-1.png'),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white, width: 2, ),
                                      color: const Color(0xff9ca3af),
                                    ),
                                    child: const Center(child: Text('+11',style: TextStyle(color: Colors.white),)),
                                  ),
                                ),
                              ),],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: 327,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "About this events",
                        style: TextStyle(
                          color: Color(0xff111827),
                          fontSize: 16,
                          fontFamily: "Noto Sans JP",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "We're celebrating our 30th edition of the California Art Festival in CA this Spring so join us at the Building Park in California State University from March 29 - 30, 2022 with our Private View opening on Saturday, March 26!",
                        style: TextStyle(
                          color: Color(0xff9ca3af),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Show more",
                        style: TextStyle(
                          color: Color(0xffff8142),
                          fontSize: 14,
                          fontFamily: "Noto Sans JP",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),

              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000),
                            color: const Color(0xfff9fafb),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:[
                              Container(
                                width: 48,
                                height: double.infinity,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/7.png'),

                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                const Text(
                                  "The Creative",
                                  style: TextStyle(
                                    color: Color(0xff111827),
                                    fontSize: 14,
                                    fontFamily: "Noto Sans JP",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: SvgPicture.asset('assets/svg/heroicons-solid_badge-check.svg'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              "Arts & Crafts",
                              style: TextStyle(
                                color: Color(0xff9ca3af),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 96,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xffff8142), width: 1, ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:const [
                          Text(
                            "Follow",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffff8142),
                              fontSize: 12,
                              fontFamily: "Noto Sans JP",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Agenda',
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 17,
                        fontFamily: "Noto Sans JP",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                margin: const EdgeInsets.only(top: 10,bottom: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    agendaItem('assets/7.png','Warm welcome'),
                    agendaItem('assets/8.png','Art live contest')
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Location",
                      style: TextStyle(
                        color: Color(0xff111827),
                        fontSize: 16,
                        fontFamily: "Noto Sans JP",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xfff9fafb),
                        image: const DecorationImage(
                            image: AssetImage('assets/10.png')
                        )
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          right: 80,
                          top: 57,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: const Color(0xff111827), width: 6, ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x3f111827),
                                  blurRadius: 12,
                                  offset: Offset(2, 4),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 109,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x26ff8142),
                                      blurRadius: 12,
                                      offset: Offset(2, 4),
                                    ),
                                  ],
                                  color: const Color(0xffff8142),
                                ),
                                padding: const EdgeInsets.only(left: 7, right: 9, top: 9, bottom: 8, ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: SvgPicture.asset('assets/svg/send-2.svg'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:const [
                                  Text(
                                    "Building park 001",
                                    style: TextStyle(
                                      color: Color(0xff111827),
                                      fontSize: 12,
                                      fontFamily: "Noto Sans JP",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "California State University",
                                    style: TextStyle(
                                      color: Color(0xff111827),
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 72,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text(
                          "\$25.98 - \$35.00",
                          style: TextStyle(
                            color: Color(0xff111827),
                            fontSize: 16,
                            fontFamily: "Noto Sans JP",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "100 Spot left",
                          style: TextStyle(
                            color: Color(0xff9ca3af),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffff8142),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: const Center(
                        child: Text(
                          "Get a Ticket",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "Noto Sans JP",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }

  Widget agendaItem(image,text){
    return   Container(
      width: 170,
      margin: EdgeInsets.symmetric(vertical: 20).copyWith(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 10,
            blurRadius: 20,
            offset: Offset(0,2),
            color: Colors.grey.shade100
          )
        ]
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
                color: const Color(0xfff9fafb),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain
                )
            ),

          ),
          const SizedBox(height: 14),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xff111827),
              fontSize: 14,
              fontFamily: "Noto Sans JP",
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Daryl Nehls",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff9ca3af),
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 10.50,
                    height: 10.50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:  SvgPicture.asset('assets/svg/clock.svg'),
                  ),
                ],
              ),
              const SizedBox(width: 4),
              const Text(
                "10:00 - 10:15 PM",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff9ca3af),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
