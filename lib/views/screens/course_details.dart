import 'package:course_app/views/screens/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> avatars=[
      'assets/avatars/avatar1.jpeg',
      'assets/avatars/avatar2.jpeg',
      'assets/avatars/avatar3.jpeg',
      'assets/avatars/avatar4.jpeg',
      'assets/avatars/avatar5.jpeg'
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 15),
              minimumSize: Size(MediaQuery.of(context).size.width, 50),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            ),
            onPressed: (){},
            child: _floatingActionBar(constraints, context),
          ),
          appBar: AppBar(
            title: const Text('Details'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            actions: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(MingCute.notification_line),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Our Student', style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            for(var avatar in avatars)
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(avatar),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Photoshop Editing Course',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        const SizedBox(height: 16),
                        const Row(
                          children: [
                            Icon(Icons.play_circle_outline_rounded, size: 27),
                            SizedBox(width: 6),
                            Text(
                              '30 Lessons',
                              style: TextStyle(fontSize: 17),
                            ),
                            Spacer(),
                            Icon(Icons.access_time_rounded, size: 27),
                            SizedBox(width: 6),
                            Text(
                              '13h 30min',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ],
                    )),
                const SizedBox(height: 24),
                _buildSectionTitle(context, 'Video', constraints),
                const SizedBox(height: 8),
                ListView(
                  shrinkWrap: true,
                  children: [
                    _buildVideoTile('Introduction', '3h 30min', true),
                    const SizedBox(height: 18),
                    _buildVideoTile('Install Software', '1h 30min', false),
                    const SizedBox(height: 18),
                    _buildVideoTile('Learn Tools', '2h 30min', false),
                    const SizedBox(height: 18),
                    _buildVideoTile('Tracing Sketsa', '2h 30min', false),
                    const SizedBox(height: 18),
                  ],
                ),
                const SizedBox(height: 16),
                //_floatingActionBar(constraints)
              ],
            ),
          ),
        );
      }
    );
  }

  Widget _buildVideoTile(String title, String duration, bool isLocked) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16)
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(4)
          ),
          child: Icon(
            CupertinoIcons.lock_fill,
            size: 35,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        title: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
        subtitle: Text(duration),
        trailing: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.play_circle_fill_rounded, size: 30, color: Colors.lightGreen,),
          label: const Text('Play Video', style: TextStyle(color: Colors.black, fontSize: 14),),
          style: ElevatedButton.styleFrom(
            elevation: 2,
            backgroundColor: Colors.white,
            shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
          )
          ),
        ),
      ),
    );
  }
  Widget _buildSectionTitle(BuildContext context, String title, BoxConstraints constraints) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: constraints.maxHeight*0.023, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('View All'),
        ),
      ],
    );
  }

  Widget _floatingActionBar(BoxConstraints constraints, BuildContext context){
    return Row(
      children: [
        const SizedBox(width: 30),
        Container(
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(15)
          ),
          padding: const EdgeInsets.all(18),
          child: const Icon(CupertinoIcons.bookmark_solid, color: Colors.white,),
        ),
        const SizedBox(width: 15),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14)
            ),
            backgroundColor: Colors.lightGreen,
            padding: const EdgeInsets.symmetric(
                vertical: 20, horizontal: 100),
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: const Text('Enroll Now', style: TextStyle(color: Colors.black),),
        ),
      ],
    );
  }
}
