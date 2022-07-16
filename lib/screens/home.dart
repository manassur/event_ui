import 'package:event_ui/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 72,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text(
                            "Find events near",
                            style: TextStyle(
                              color: Color(0xff9ca3af),
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "California, USA",
                            style: TextStyle(
                              color: Color(0xff111827),
                              fontSize: 18,
                              fontFamily: "Noto Sans JP",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xfff9fafb),
                        ),
                        child: Stack(
                          children:[
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade50
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: SvgPicture.asset('assets/svg/Notification.svg'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 25,
                              top: 11,
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 1.50, ),
                                  color: const Color(0xffff4747),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xfff9fafb),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      SvgPicture.asset('assets/svg/Search.svg'),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: SizedBox(
                          child: Text(
                            "Search all events...",
                            style: TextStyle(
                              color: Color(0xff9ca3af),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.only(top: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffff8142),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10, ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: SvgPicture.asset('assets/svg/flash.svg'),
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              "My feed",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Noto Sans JP",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      categoryChip('Concerts'),
                      categoryChip('Seminar'),
                      categoryChip('Theatre'),

                    ],
                  ),
                ),
                titleWidget('Upcoming Events'),
                Container(
                  height: 300,
                  margin: const EdgeInsets.only(top: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      upComingEventsWidget('29','Mar','10:00PM','California','45.90','California Art Festival: 2022 Dana Point 29-30','assets/img.png'),
                      upComingEventsWidget('30','Jun','07:00PM','New York','5.90','Creative self care: Guide to Intuitive Watercolor','assets/img1.png')

                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const Divider(),
                titleWidget('Suggestion for you'),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    suggestionWidget('30','Jun','07:00PM','New York','Free','Creative self care: Guide to Intuitive Watercolor','assets/3.png'),
                    suggestionWidget('30','Jun','07:00PM','New York','\$5.90','Creative self care: Guide to Intuitive Watercolor','assets/2.png'),
                    suggestionWidget('30','Jun','07:00PM','New York','\$5.90','Creative self care: Guide to Intuitive Watercolor','assets/1.png'),
                  ],
                ),
                titleWidget('Who to follow'),
                SizedBox(
                  height: 390,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        whoToFollowWidget('8Ape','California, USA','Arts and Crafts of 8Ape','assets/5.png'),
                        whoToFollowWidget('The dumba','New York','Dance Party 20s','assets/6.png')

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget categoryChip(title){
    return  Container(
      height: 50,
      width: 100,
      margin: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xfff9fafb),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12, ),
      child: Center(
        child: Text(
         title,
          style: const TextStyle(
            color: Color(0xff111827),
            fontSize: 14,
          ),
        ),
      ),
    );
  }
  Widget upComingEventsWidget(day,month,time,place,price,name,image){
   return Container(
      width: 250,
      height: 310,
      margin: const EdgeInsets.only(right: 20),
      child: Stack(
        children:[
          Container(
            width: 250,
            height: 310,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xfff3f4f6), width: 1, ),
                color: Colors.white,
                image: DecorationImage(
                    image:  AssetImage(image),
                  fit: BoxFit.cover
                )
            ),
          ),
          Positioned(
            left: 190,
            top: 12,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                   day,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: const Color(0xff111827),
                      fontSize: 14,
                      fontFamily: "Noto Sans JP",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    month,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: const Color(0xff9ca3af),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 12,
            top: 179,
            child: SizedBox(
              width: 226,
              height: 106,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 226,
                    height: 106,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x33111827),
                          blurRadius: 16,
                          offset: Offset(4, 8),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Stack(
                      children:[
                         Positioned(
                          left: 12,
                          top: 12,
                          child: SizedBox(
                            width: 202,
                            child: Text(
                              name,
                              style: const TextStyle(
                                color: Color(0xff111827),
                                fontSize: 14,
                                fontFamily: "Noto Sans JP",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          top: 69,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                               Text(
                                place,
                                style: const TextStyle(
                                  color: Color(0xff9ca3af),
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Container(
                                width: 4,
                                height: 4,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffe5e7eb),
                                ),
                              ),
                              const SizedBox(width: 4),
                               Text(
                                time,
                                style: const TextStyle(
                                  color: Color(0xff9ca3af),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 150,
                          top: 62,
                          child: Container(
                            width: 64,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xfffff2ec),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$'+price,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xffff8142),
                                    fontSize: 12,
                                    fontFamily: "Noto Sans JP",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget titleWidget(title){
    return    Container(
      margin: const EdgeInsets.only(top: 30,bottom: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff111827),
              fontSize: 17,
              fontFamily: "Noto Sans JP",
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          const Text(
            "See All",
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xff9ca3af),
              fontSize: 13,
              fontFamily: "Noto Sans JP",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
  Widget suggestionWidget(day,month,time,place,price,name,image){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailsScreen()),
        );
      },
      child: Container(
        height: 130,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade50,
              blurRadius: 5,
              spreadRadius: 7,
              offset: const Offset(4,8)
            )
          ]
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(
              width: 88,
              height: 96,
              child: Stack(
                children:[
                  Container(
                    width: 88,
                    height: 96,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xfff3f4f6),
                        image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover
                        )
                    ),
                    padding: const EdgeInsets.only(left: 8, right: 48, top: 8, bottom: 56, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Text(
                                day,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Color(0xff111827),
                                  fontSize: 12,
                                  fontFamily: "Noto Sans JP",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                month,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: const Color(0xff9ca3af),
                                  fontSize: 8,
                                  fontFamily: "Noto Sans JP",
                                  fontWeight: FontWeight.w500,
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
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    name,
                    style: const TextStyle(
                      color: Color(0xff111827),
                      fontSize: 14,
                      fontFamily: "Noto Sans JP",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 203,
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
                              width: 20,
                              height: 20,
                              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2, ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: SvgPicture.asset('assets/svg/map-pin.svg'),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              place,
                              style: const TextStyle(
                                color: Color(0xff9ca3af),
                                fontSize: 13,
                                fontFamily: "Noto Sans JP",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 55),
                        Container(
                          width: 64,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xfffff2ec),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Text(price,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Color(0xffff8142),
                                  fontSize: 12,
                                  fontFamily: "Noto Sans JP",
                                  fontWeight: FontWeight.w500,
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
          ],
        ),
      ),
    );
  }
  Widget whoToFollowWidget(autho,place,name,image){
    return   Container(
      width: 270,
      margin: const EdgeInsets.only(right: 20,bottom: 20,top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade50,
              blurRadius: 7,
              spreadRadius: 8,
              offset: const Offset(0,4)
          )
        ]
    ),
      padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20,right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            width: 216,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xfff3f4f6),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                )
            ),
          ),
          const SizedBox(height: 16),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                name,
                style: const TextStyle(
                  color: Color(0xff111827),
                  fontSize: 14,
                  fontFamily: "Noto Sans JP",
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "by ${autho}",
                style: const TextStyle(
                  color: Color(0xff9ca3af),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 208,
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
                   SvgPicture.asset('assets/svg/map-pin-1.svg'),
                    const SizedBox(width: 4),
                    Text(
                      place,
                      style: const TextStyle(
                        color: const Color(0xff111827),
                        fontSize: 12,
                        fontFamily: "Noto Sans JP",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 34),
                SizedBox(
                  width: 56,
                  height: 28,
                  child: Stack(
                    children:[Positioned.fill(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2, ),
                          ),
                          child: Image.asset('assets/avatar.png'),
                        ),
                      ),
                    ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2, ),
                            ),
                            child:Image.asset('assets/avatar-1.png'),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2, ),
                            ),
                            child: Image.asset('assets/avatar-2.png'),
                          ),
                        ),
                      ),],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: 208,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xff00334e), width: 1, ),
            ),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const Text(
                  "Follow",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xff00334e),
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
    );
  }
}
