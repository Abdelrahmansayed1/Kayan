import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  String employeeName = '';
  DateTime dateTime;
  PostCard({super.key, required this.employeeName, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 0, right: 0, top: 18),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ListTile(
            leading: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff7a50f5)),
                child: Image.asset(
                    "lib/Assets/announcement-icon-symbol-premium-quality-isolated-vector-16005264-fotor-20230619162123.png",
                    width: 30)),
            title: Text(
              'Happy Birthday Abdelrahman Sayed',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            subtitle: Text(
              'Time goes here',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            tileColor: Colors.white,
            dense: false,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 18, 10),
            child: Text(
              'Wishing you a great birthday and a memorable year. From all of us.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'Readex Pro',
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'lib/Assets/birthday.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: SizedBox(
                    width: 90,
                    height: 40,
                    child: TextButton.icon(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      label: const Text(
                        'Liked by ',
                        style: TextStyle(
                          color: Color(0xffa0a3a9),
                          fontFamily: 'Main',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      icon: Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(color: Color(0xff4177bc), spreadRadius: 3),
                        ], shape: BoxShape.circle, color: Color(0xff4177bc)),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  print('Button pressed ...');
                },
                child: const Text(
                  'Comments ',
                  style: TextStyle(
                    color: Color(0xffa0a3a9),
                    fontFamily: 'Main',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 300,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(width: 1, color: Color(0xffeeeeee)),
                )),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 40,
                  child: TextButton.icon(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    label: const Text(
                      'Like',
                      style: TextStyle(
                        color: Color(0xffa0a3a9),
                        fontFamily: 'Main',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      color: Color(0xffa0a3a9),
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 40,
                  child: TextButton.icon(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    label: const Text(
                      'Comment ',
                      style: TextStyle(
                        color: Color(0xffa0a3a9),
                        fontFamily: 'Main',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    icon: const Icon(
                      Icons.comment_outlined,
                      color: Color(0xffa0a3a9),
                      size: 15,
                    ),
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
