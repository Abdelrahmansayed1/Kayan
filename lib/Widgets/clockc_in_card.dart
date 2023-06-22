import 'package:flutter/material.dart';

class ClockInCard extends StatelessWidget {
  const ClockInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 0, right: 0),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ListTile(
              leading: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(color: Color(0xffe9eff5), spreadRadius: 3),
                ], shape: BoxShape.circle, color: Color(0xffe9eff5)),
                child: const Icon(
                  size: 30,
                  Icons.fingerprint_sharp,
                  color: Color(0xFF006AB0),
                ),
              ),
              title: Text(
                'Good Morning Abdelrahman',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              dense: false,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 350,
                height: 30,
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(3),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff4177bc))),
                  child: Text(
                    'Clock in',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontFamily: 'Main',
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
            Container(
                height: 40,
                padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Today\'s Punches",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontFamily: "sans", color: const Color(0xff808189)),
                    )))
          ],
        ),
      ),
    );
  }
}
