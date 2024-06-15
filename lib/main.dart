import 'package:design_test_app/controllers/maines_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:smooth_corner/smooth_corner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static Color backgroundColor = const Color(0xff203B46);
  static Color panelsColor = const Color(0xffFFFFFF);
  static Color buttonsColor = const Color(0xffE9C46A);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => MinesController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<MinesController>(
          builder: (context, minesController, child) {
            return Scaffold(
              backgroundColor: backgroundColor,
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SmoothContainer(
                      width: double.infinity,
                      height: 191.0,
                      smoothness: 0.6,
                      color: const Color(0xff67562F),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const SizedBox(height: 12.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.5),
                            child: SmoothContainer(
                              width: double.infinity,
                              height: 34.0,
                              smoothness: 0.6,
                              color: panelsColor,
                              borderRadius: BorderRadius.circular(12.5),
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Slider(
                                      activeColor: buttonsColor,
                                      inactiveColor: const Color(0xff67562F),
                                      value: minesController.sliderMinesValue,
                                      min: 1.0,
                                      max: 24.0,
                                      onChanged: (value) => minesController
                                          .changeSliderMines(value),
                                    ),
                                  ),
                                  const SizedBox(height: 12.0),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    child: Text(
                                      minesController.sliderMinesValue
                                          .toInt()
                                          .toString(),
                                      style: GoogleFonts.inter(
                                        fontSize: 16.0,
                                        letterSpacing: 1.0,
                                        fontWeight: FontWeight.bold,
                                        color: backgroundColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: SmoothContainer(
                                    width: double.infinity,
                                    height: 45.0,
                                    smoothness: 0.6,
                                    color: panelsColor,
                                    borderRadius: BorderRadius.circular(12.5),
                                    alignment: Alignment.center,
                                    child: Text(
                                      NumberFormat.simpleCurrency(
                                              locale: 'en_US')
                                          .format(minesController.currentBet),
                                      style: GoogleFonts.inter(
                                        fontSize: 18.0,
                                        letterSpacing: 1.0,
                                        fontWeight: FontWeight.bold,
                                        color: backgroundColor,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 45.0,
                                  height: 45.0,
                                  child: SmoothClipRRect(
                                    smoothness: 0.6,
                                    child: ElevatedButton(
                                      onPressed: () =>
                                          minesController.multiplyBet(),
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        backgroundColor: buttonsColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.5),
                                        ),
                                      ),
                                      child: SizedBox(
                                        width: 26.0,
                                        height: 26.0,
                                        child: Center(
                                          child: FaIcon(
                                            FontAwesomeIcons.xmark,
                                            color: backgroundColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 45.0,
                                  height: 45.0,
                                  child: SmoothClipRRect(
                                    smoothness: 0.6,
                                    child: ElevatedButton(
                                      onPressed: () =>
                                          minesController.divideBet(),
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        backgroundColor: buttonsColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.5),
                                        ),
                                      ),
                                      child: SizedBox(
                                        width: 26.0,
                                        height: 26.0,
                                        child: Center(
                                          child: FaIcon(
                                            FontAwesomeIcons.divide,
                                            color: backgroundColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                SizedBox(
                                  width: 45.0,
                                  height: 45.0,
                                  child: SmoothClipRRect(
                                    smoothness: 0.6,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        backgroundColor: buttonsColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.5),
                                        ),
                                      ),
                                      child: SizedBox(
                                        width: 26.0,
                                        height: 26.0,
                                        child: Center(
                                          child: FaIcon(
                                            FontAwesomeIcons.solidPenToSquare,
                                            color: backgroundColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          SizedBox(
                            width: double.infinity,
                            height: 76.0,
                            child: SmoothClipRRect(
                              smoothness: 0.6,
                              borderRadius: BorderRadius.circular(30.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: buttonsColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                child: Text(
                                  'BET',
                                  style: GoogleFonts.inter(
                                    fontSize: 32.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w900,
                                    color: backgroundColor,
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
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                toolbarHeight: 90.0,
                titleSpacing: 24.0,
                title: Text(
                  'Mines',
                  style: GoogleFonts.inter(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffEBEBEB),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: SizedBox(
                      width: 45.0,
                      height: 45.0,
                      child: SmoothClipRRect(
                        smoothness: 0.6,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: const Color(0xffE76F51),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.5),
                            ),
                          ),
                          child: SizedBox(
                            width: 26.0,
                            height: 26.0,
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.xmark,
                                color: backgroundColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    SmoothContainer(
                      width: double.infinity,
                      height: 57.0,
                      smoothness: 0.6,
                      color: panelsColor,
                      borderRadius: BorderRadius.circular(15.0),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          NumberFormat.simpleCurrency(locale: 'en_US')
                              .format(minesController.balance),
                          style: GoogleFonts.inter(
                            fontSize: 24.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w900,
                            color: backgroundColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 62.0),
                    GridView.custom(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate: SliverWovenGridDelegate.count(
                        crossAxisCount: 5,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        pattern: const [
                          WovenGridTile(1),
                          WovenGridTile(
                            7 / 7,
                            crossAxisRatio: 1,
                            alignment: AlignmentDirectional.centerEnd,
                          ),
                        ],
                      ),
                      childrenDelegate: SliverChildBuilderDelegate(
                          childCount: 25,
                          (context, index) => Material(
                                clipBehavior: Clip.antiAlias,
                                borderRadius: BorderRadius.circular(12.0),
                                color: buttonsColor,
                                elevation: 5.0,
                                child: SizedBox(
                                  width: 59.0,
                                  height: 59.0,
                                  child: SmoothClipRRect(
                                    smoothness: 0.6,
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        elevation: 0,
                                        shadowColor: Colors.transparent,
                                        backgroundColor: buttonsColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                ),
                              )),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
