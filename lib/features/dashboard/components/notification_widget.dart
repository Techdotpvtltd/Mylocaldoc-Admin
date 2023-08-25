import 'package:admin/core/values/local_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationBellWidget extends StatelessWidget {
  const NotificationBellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator NotificationnumberWidget - FRAME
    return Container(
        width: 60,
        height: 56,
        decoration: const BoxDecoration(),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                  width: 60,
                  height: 56,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 48,
                            height: 56,
                            decoration: const BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 48,
                                      height: 56,
                                      decoration: const BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 18,
                                            left: 5,
                                            child: Container(
                                                width: 38,
                                                height: 38,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(107, 92,
                                                      210, 0.10000000149011612),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              38, 38)),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 48,
                                                height: 48,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      255,
                                                      255,
                                                      255,
                                                      0.20000000298023224),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              48, 48)),
                                                ))),
                                      ]))),
                              Positioned(
                                  top: 12,
                                  left: 12,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 24,
                                            height: 24,
                                            decoration: const BoxDecoration())),
                                    Positioned(
                                        top: 1,
                                        left: 2,
                                        child: SizedBox(
                                            width: 20,
                                            height: 22.99738311767578,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 1.043081283569336e-7,
                                                  left: -1.7763568394002505e-15,
                                                  child: SvgPicture.asset(
                                                      LocalImages.bellIcon,
                                                      semanticsLabel: 'path')),
                                              Positioned(
                                                  top: 20.900390625,
                                                  left: 7.14453125,
                                                  child: SvgPicture.asset(
                                                      LocalImages.bellIcon,
                                                      semanticsLabel: 'path')),
                                            ]))),
                                  ])),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 36,
                        child: Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: const BoxDecoration())),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(255, 117, 75, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(24, 24)),
                                      ))),
                              const Positioned(
                                  top: 4,
                                  left: 8,
                                  child: Text(
                                    '2',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Nunito Sans',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.3333333333333333),
                                  )),
                            ]))),
                  ]))),
        ]));
  }
}
