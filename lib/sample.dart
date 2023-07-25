import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/util.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // afteruploading2Hu (236:16305)
        width: double.infinity,
        height: 844 * fem,
        child: Container(
          // group37449mFV (236:16307)
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                // newexpense7KM (236:16308)
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      13 * fem, 4 * fem, 22 * fem, 410 * fem),
                  width: 390 * fem,
                  height: 844 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(40 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          // autogroupu8gxHt3 (7cQyqi1Hg5hrKYtN1Eu8gX)
                          margin: EdgeInsets.fromLTRB(
                              6 * fem, 0 * fem, 6 * fem, 24 * fem),
                          width: double.infinity,
                          height: 36 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup155yCk7 (7cQywYAuYCmdrT4CdL155y)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    4 * fem, 6 * fem, 7 * fem, 5 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(18 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x26000000),
                                      offset: Offset(0 * fem, 2 * fem),
                                      blurRadius: 4 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  // icons8back9011Uhd (236:16353)
                                  child: SizedBox(
                                    width: 25 * fem,
                                    height: 25 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/icons8-back-90-1-1-Yh5.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // newexpenseQLP (236:16354)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 149 * fem, 0 * fem),
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff3e3e3e),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'New ',
                                      ),
                                      TextSpan(
                                        text: 'Expense',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff227fc0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group37316ugT (236:16349)
                                padding: EdgeInsets.fromLTRB(
                                    9 * fem, 9 * fem, 9 * fem, 9 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(18 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x26000000),
                                      offset: Offset(0 * fem, 2 * fem),
                                      blurRadius: 4 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  // home31Dh9 (236:16351)
                                  child: SizedBox(
                                    width: 18 * fem,
                                    height: 18 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/home-3-1-CpP.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // autogroupacgpMYT (7cQz42z5fzkt8enedmaCgP)
                        margin: EdgeInsets.fromLTRB(
                            6 * fem, 0 * fem, 3 * fem, 0 * fem),
                        width: double.infinity,
                        height: 320 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // frame1327gqd (236:16318)
                              left: 0 * fem,
                              top: 5 * fem,
                              child: Container(
                                width: 346 * fem,
                                height: 315 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // inputtextfieldQmd (236:16321)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 21 * fem, 26.37 * fem),
                                      width: double.infinity,
                                      height: 18 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // dateofexpenseKtb (236:16322)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 99 * fem, 0 * fem),
                                            child: Text(
                                              'Date of Expense',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff161c2b),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group37385qrw (236:16323)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 0 * fem, 2 * fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // iconcalendarBR1 (236:16325)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      1 * fem,
                                                      12.63 * fem,
                                                      0 * fem),
                                                  width: 11.37 * fem,
                                                  height: 12 * fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/icon-calendar-Vo5.png',
                                                    width: 11.37 * fem,
                                                    height: 12 * fem,
                                                  ),
                                                ),
                                                Text(
                                                  // sYj (236:16324)
                                                  '17-04-2023',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.2175 * ffem / fem,
                                                    letterSpacing: 2.04 * fem,
                                                    color: Color(0xff241818),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroupxvmvbzX (7cQzBhRynDMgidkfZpxvMV)
                                      margin: EdgeInsets.fromLTRB(
                                          4 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      width: 342 * fem,
                                      height: 270.63 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // group37384KQj (236:16330)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Container(
                                              width: 335 * fem,
                                              height: 237.63 * fem,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // dailyallowance3Lj (236:16341)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        7 * fem),
                                                    child: Text(
                                                      'Daily allowance',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color:
                                                            Color(0xff227fc0),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // inputtextfield9uZ (236:16331)
                                                    width: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          // autogroupandv6Zu (7cQzSC1qA4QTxUESCWANDV)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  9.37 * fem),
                                                          width:
                                                              double.infinity,
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                // autogroupujsqRs5 (7cQzXc2UbtPqXJg9CsUJsq)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        19 *
                                                                            fem,
                                                                        0 * fem),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      // amountrsN1d (236:16332)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          37 *
                                                                              fem),
                                                                      child:
                                                                          Text(
                                                                        'Amount(Rs) :  ',
                                                                        style:
                                                                            SafeGoogleFont(
                                                                          'Montserrat',
                                                                          fontSize:
                                                                              12 * ffem,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          height: 1.2175 *
                                                                              ffem /
                                                                              fem,
                                                                          color:
                                                                              Color(0xff161c2b),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // commentsGsh (236:16340)
                                                                      'Comments : ',
                                                                      style:
                                                                          SafeGoogleFont(
                                                                        'Montserrat',
                                                                        fontSize:
                                                                            12 *
                                                                                ffem,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        height: 1.217 *
                                                                            ffem /
                                                                            fem,
                                                                        color: Color(
                                                                            0xff161c2b),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                // group901qH (236:16333)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0.63 *
                                                                            fem,
                                                                        0 * fem,
                                                                        0 * fem),
                                                                width:
                                                                    231 * fem,
                                                                height:
                                                                    96 * fem,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(12 *
                                                                              fem),
                                                                ),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      // autogroupjctrvBZ (7cQzi1to5FJAguqRbtJCTR)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          6 * fem),
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          15 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          15 *
                                                                              fem,
                                                                          16 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border: Border.all(
                                                                            color:
                                                                                Color(0xff216b99)),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12 *
                                                                                fem),
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        '0000',
                                                                        style:
                                                                            SafeGoogleFont(
                                                                          'Montserrat',
                                                                          fontSize:
                                                                              12 * ffem,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          height: 1.2175 *
                                                                              ffem /
                                                                              fem,
                                                                          color:
                                                                              Color(0xff898989),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // autogroupe9ttnDm (7cQznBSXGC4JMZ6jm6E9tT)
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          14 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          12 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border: Border.all(
                                                                            color:
                                                                                Color(0xff216b99)),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12 *
                                                                                fem),
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        'Comments',
                                                                        style:
                                                                            SafeGoogleFont(
                                                                          'Montserrat',
                                                                          fontSize:
                                                                              12 * ffem,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          height: 1.2175 *
                                                                              ffem /
                                                                              fem,
                                                                          color:
                                                                              Color(0xff898989),
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
                                                          // conveyancefHZ (236:16347)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  7 * fem),
                                                          child: Text(
                                                            'conveyance',
                                                            style:
                                                                SafeGoogleFont(
                                                              'Montserrat',
                                                              fontSize:
                                                                  14 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 1.2175 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff227fc0),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // amountrsNSs (236:16342)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0.63 * fem),
                                                          child: Text(
                                                            'Amount(Rs) :  ',
                                                            style:
                                                                SafeGoogleFont(
                                                              'Montserrat',
                                                              fontSize:
                                                                  12 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.2175 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff161c2b),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // VGb (236:16337)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  119 * fem,
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  21.37 * fem),
                                                          child: Text(
                                                            '0000',
                                                            style:
                                                                SafeGoogleFont(
                                                              'Montserrat',
                                                              fontSize:
                                                                  12 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.2175 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff898989),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // autogroupmh9hcc7 (7cQzsvmwqrWQJ3KkTdmh9H)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  148 * fem,
                                                                  0 * fem),
                                                          width:
                                                              double.infinity,
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                // commentsweP (236:16346)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        42 *
                                                                            fem,
                                                                        14.63 *
                                                                            fem),
                                                                child: Text(
                                                                  'Comments : ',
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        12 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xff161c2b),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                // commentss2F (236:16339)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        14.63 *
                                                                            fem,
                                                                        0 * fem,
                                                                        0 * fem),
                                                                child: Text(
                                                                  'Comments',
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        12 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xff898989),
                                                                  ),
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
                                          ),
                                          Positioned(
                                            // group91ahM (236:16343)
                                            left: 104 * fem,
                                            top: 156.630859375 * fem,
                                            child: Container(
                                              width: 231 * fem,
                                              height: 96 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12 * fem),
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // rectangle4JdM (236:16344)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        6 * fem),
                                                    width: double.infinity,
                                                    height: 45 * fem,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12 * fem),
                                                      border: Border.all(
                                                          color: Color(
                                                              0xff216b99)),
                                                    ),
                                                  ),
                                                  Container(
                                                    // rectangle5dvX (236:16345)
                                                    width: double.infinity,
                                                    height: 45 * fem,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12 * fem),
                                                      border: Border.all(
                                                          color: Color(
                                                              0xff216b99)),
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
                            Positioned(
                              // rectangle4BSF (236:16348)
                              left: 196 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 147 * fem,
                                  height: 27 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(6 * fem),
                                      border:
                                          Border.all(color: Color(0xff216b99)),
                                    ),
                                  ),
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
              Positioned(
                // group37448Vxj (236:16355)
                left: 23 * fem,
                top: 445 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      17 * fem, 19 * fem, 13 * fem, 16 * fem),
                  width: 343 * fem,
                  height: 67 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff04bfda)),
                    color: Color(0xfff0f3f4),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupt9qqnB9 (7cR2QJQMvjFgp5GQwwT9qq)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 10 * fem, 2 * fem),
                        width: 69 * fem,
                        height: 30 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // ellipse211uWf (236:16357)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30 * fem,
                                  height: 30 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                      color: Color(0xffffffff),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/page-1/images/ellipse-211-bg.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse212PRq (236:16358)
                              left: 13 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30 * fem,
                                  height: 30 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                      color: Color(0xffffffff),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/page-1/images/ellipse-212-bg.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse2135pT (236:16359)
                              left: 26 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30 * fem,
                                  height: 30 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                      color: Color(0xffffffff),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/page-1/images/ellipse-213-bg.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse214amD (236:16360)
                              left: 39 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30 * fem,
                                  height: 30 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                      color: Color(0xffffffff),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/page-1/images/ellipse-214-bg.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // chooseimagetouploadJBR (236:16361)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 23 * fem, 1 * fem),
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff161c2b),
                            ),
                            children: [
                              TextSpan(
                                text: 'Choose Image',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff008ece),
                                ),
                              ),
                              TextSpan(
                                text: ' to upload ',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // autogroupj5dhSwq (7cR2XoBsU2d8DELn2uj5Dh)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            7 * fem, 9 * fem, 17 * fem, 8 * fem),
                        height: 32 * fem,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/page-1/images/button-large-primary-rtP.png',
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // iconupload8pf (236:16364)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 7 * fem, 0 * fem),
                              width: 7 * fem,
                              height: 9 * fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-upload-gXH.png',
                                width: 8 * fem,
                                height: 9 * fem,
                              ),
                            ),
                            Text(
                              // uploadT6F (236:16363)
                              'UPLOAD',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xffffffff),
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
        ),
      ),
    );
  }
}
