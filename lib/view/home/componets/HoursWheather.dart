import 'package:flutter/material.dart';

class HoursWheather extends StatelessWidget {
  const HoursWheather({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: screenWidth - 40,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF000F26).withOpacity(0.1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 20,
            offset: Offset(0.0, 0.0),
            spreadRadius: 0,
          )
        ],
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Text(
                'Mar, 9',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding:  const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child:
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Column(
                      children: [
                        const Text(
                          '29°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 8), child:
                        Image.asset('pras/rain_big.png', width: 50, height: 50),
                        ),
                        const Text(
                          '15.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Container(
                  padding:  const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child:
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Column(
                      children: [
                        const Text(
                          '26°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 8), child:
                        Image.asset('pras/bissunhome.png', width: 50, height: 50),
                        ),
                        const Text(
                          '16.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Container(
                  padding:  const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: ShapeDecoration(
                    color: const Color(0x332566A2),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFF4F95FF)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child:
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Column(
                      children: [
                        const Text(
                          '24°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 8), child:
                        Image.asset('pras/grom.png', width: 50, height: 50),
                        ),
                        const Text(
                          '17.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Container(
                  padding:  const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child:
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Column(
                      children: [
                        const Text(
                          '23°C',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 8), child:
                        Image.asset('pras/cloud_rain.png', width: 50, height: 50),
                        ),
                        const Text(
                          '18.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  )
              ),

            ],
          )
        ],
      ),
    );
  }
}
