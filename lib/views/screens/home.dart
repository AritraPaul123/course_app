import 'package:carousel_slider/carousel_slider.dart';
import 'package:course_app/views/screens/course_details.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PersistentTabController controller= PersistentTabController(initialIndex: 0);

  var currIndex=0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
      return
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Padding(
              padding: EdgeInsets.only(left: 13),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1670884441012-c5cf195c062a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), // Add your avatar image here
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Christiana Amandla',
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: constraints.maxHeight * 0.028),
                ),
                Text(
                  'Lets Learning to smart',
                  style: TextStyle(
                      color: Colors.grey, fontSize: constraints.maxHeight * 0.02),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: InkWell(
                  onTap: () {},
                  child: CircleAvatar(radius: constraints.maxHeight * 0.03,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                          'assets/icons/search.png')),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Course Card
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: constraints.maxWidth*0.027, vertical: 20),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.45),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            width: double.infinity,
                            child: Text(
                              'Mathematics Course',
                              style: TextStyle(fontSize: constraints.maxWidth * 0.036,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            right: 0,
                            child: Card(
                              margin: EdgeInsets.symmetric(
                                  horizontal: constraints.maxWidth*0.036, vertical: 10),
                              color: Colors.lightGreen[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Image.asset('assets/icons/calendar.png',
                                        height: constraints.maxHeight * 0.035,
                                        width: constraints.maxHeight * 0.035),
                                    const SizedBox(width: 4),
                                    Text(
                                      '19 Nov, 2023',
                                      style: TextStyle(
                                          fontSize: constraints.maxHeight * 0.024),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(radius: constraints.maxWidth * 0.065,
                              backgroundColor: Colors.white.withOpacity(0.45),
                              child: Icon(Icons.check_circle_rounded,
                                  color: Colors.lightGreen[200])),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Completed', style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.04),),
                              Text('20', style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.05,
                                  fontWeight: FontWeight.w700)),
                            ],
                          ),
                          Container(height: 80, width: 3, color: Colors.white
                              .withOpacity(0.45)),
                          CircleAvatar(radius: constraints.maxWidth * 0.065, backgroundColor: Colors.white
                              .withOpacity(0.45), child: Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.lightGreen[200])),
                          Column(
                            children: [
                              Text('Hours Spent', style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.04),),
                              Text('455', style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.05,
                                  fontWeight: FontWeight.w700)),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.0375),
                // Popular Courses
                _buildSectionTitle(context, 'Popular Course', constraints),
                SizedBox(height: constraints.maxHeight * 0.025),
                _buildPopularCourseList(constraints),
                SizedBox(height: constraints.maxHeight * 0.0375),
                _buildSectionTitle(context, 'Popular Course', constraints),
                _buildCourseVertical(constraints)
                // Bottom Navigation
              ],
            ),
          ),
        );
      }
    );
  }


  Widget _buildSectionTitle(BuildContext context, String title, BoxConstraints constraints) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: constraints.maxHeight*0.028, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('View All'),
        ),
      ],
    );
  }

  Widget _buildPopularCourseList(BoxConstraints constraints) {
    var carouselHeight=constraints.maxHeight*0.38;
    return CarouselSlider(
      options: CarouselOptions(
        height: carouselHeight,
        padEnds: false,
        enableInfiniteScroll: false,
      ),
      items: [
        _buildCourseCarouselCard('Photoshop Editing Course', 'assets/logos/photoshop.png', 4.8, 230, 30, constraints),
        _buildCourseCarouselCard('Illustrator Editing Course', 'assets/logos/illustrator.png', 4.8, 230, 30, constraints),
        _buildCourseCarouselCard('Adobe XD Editing Course', 'assets/logos/adobe_xd.png', 4.8, 230, 30, constraints),
      ],
    );
  }

  Widget _buildCourseVertical(BoxConstraints constraints) {
    return Column(
      children: [
        _buildCourseVerticalCard('Photoshop Editing Course', 'assets/logos/photoshop.png', 4.8, 230, 30, constraints),
        SizedBox(height: constraints.maxHeight*0.025),
        _buildCourseVerticalCard('Illustrator Editing Course', 'assets/logos/illustrator.png', 4.8, 230, 30, constraints),
        SizedBox(height: constraints.maxHeight*0.025),
        _buildCourseVerticalCard('Adobe XD Editing Course', 'assets/logos/adobe_xd.png', 4.8, 230, 30, constraints),
      ],
    );
  }

  Widget _buildCourseCarouselCard(String title, String asset, double rating, int reviews, int lessons, BoxConstraints constraints) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.grey[200]!, spreadRadius: 2, blurRadius: 5),
          ],
        ),
        padding: EdgeInsets.all(constraints.maxWidth*0.0436),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Image.asset(
              asset,
              width: constraints.maxHeight*0.11,
              height: constraints.maxHeight*0.11,
            ),
            SizedBox(height: constraints.maxHeight*0.0271),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: constraints.maxHeight*0.0265, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                  SizedBox(height: constraints.maxHeight*0.012),
                  Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            child: CircleAvatar(
                              backgroundImage: const AssetImage('assets/avatars/avatar1.jpeg'),
                              radius: constraints.maxHeight*0.02,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              backgroundImage: const AssetImage('assets/avatars/avatar2.jpeg'),
                              radius: constraints.maxHeight*0.02,
                            ),
                          ),
                          Positioned(
                            left: 38,
                            child: CircleAvatar(
                              backgroundImage: const AssetImage('assets/avatars/avatar3.jpeg'),
                              radius: constraints.maxHeight*0.02,
                            ),
                          ),
                          Positioned(
                            left: 56,
                            child: CircleAvatar(
                              backgroundColor: Colors.lightGreen[200],
                              radius: constraints.maxHeight*0.02,
                              child: Text("+20", style: TextStyle(color: Colors.white, fontSize: constraints.maxHeight*0.02),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: constraints.maxWidth*0.2),
                      const Text('Participants', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Divider(color: Colors.black.withOpacity(0.2), thickness: 1, indent: 10, endIndent: 10,),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[700], size: constraints.maxWidth*0.045),
                      const SizedBox(width: 2),
                      RichText(text: TextSpan(text: rating.toString(), style: TextStyle(color: Colors.grey, fontSize: constraints.maxWidth*0.045),children: [TextSpan(text: ' ($reviews)', style: TextStyle(fontSize: constraints.maxWidth*0.035))]),),
                      const Spacer(),
                      Icon(Icons.play_circle_outline_rounded, size: constraints.maxWidth*0.045, color: Colors.grey,),
                      const SizedBox(width: 3),
                      Text('$lessons Lessons', style: TextStyle(color: Colors.grey, fontSize: constraints.maxWidth*0.045)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseVerticalCard(String title, String asset, double rating, int reviews, int lessons, BoxConstraints constraints) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey[200]!, spreadRadius: 2, blurRadius: 5),
        ],
      ),
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(constraints.maxWidth*0.025),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(6)
            ),
            child: Image.asset(
              asset,
              width: constraints.maxHeight*0.07,
              height: constraints.maxHeight*0.07,
            ),
          ),
          SizedBox(width: constraints.maxHeight*0.018),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: constraints.maxHeight*0.0281, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                SizedBox(height: constraints.maxHeight*0.0125),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow[700], size: constraints.maxWidth*0.045),
                    const SizedBox(width: 2),
                    RichText(text: TextSpan(text: rating.toString(), style: TextStyle(color: Colors.grey, fontSize: constraints.maxWidth*0.045),children: [TextSpan(text: ' ($reviews)', style: TextStyle(fontSize: constraints.maxWidth*0.035))]),),
                    const Spacer(),
                    Icon(Icons.play_circle_outline_rounded, size: constraints.maxWidth*0.045, color: Colors.grey,),
                    const SizedBox(width: 3),
                    Text('$lessons Lessons', style: TextStyle(color: Colors.grey, fontSize: constraints.maxWidth*0.045)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
