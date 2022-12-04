import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ApiDesignScreen extends StatefulWidget {
  ApiDesignScreen({
    required this.name,
    required this.gifUrl,
    required this.equipment,
    required this.target,
    super.key,
  });

  final String name;
  final String gifUrl;
  final String equipment;
  final String target;

  @override
  State<ApiDesignScreen> createState() => _ApiDesignScreenState();
}

class _ApiDesignScreenState extends State<ApiDesignScreen> {
  bool _isRunning = true;

  final _controller = CountDownController();

  final _controller2 = CountDownController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/736x/53/71/b0/5371b05f42d24d26ae241638f27e7c63.jpg',
            ),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text(
                '${widget.name.toUpperCase()}',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 300.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.gifUrl),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.darken),
                      ),
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Text(
                          'Target',
                          style: GoogleFonts.alike(
                            color: Colors.white,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        'Timing',
                        style: GoogleFonts.alike(
                          color: Colors.white,
                          fontSize: 23,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            '${widget.target.toUpperCase()}',
                            style: GoogleFonts.alike(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(
                            25,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CountDownProgressIndicator(
                            controller: _controller,
                            valueColor: Colors.red,
                            backgroundColor: Colors.blue,
                            initialPosition: 0,
                            duration: 60,
                            text: 'SEC',
                            onComplete: () => null,
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(
                              25,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Equipment',
                    style: GoogleFonts.alike(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          '${widget.equipment}',
                          style: GoogleFonts.alike(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
