import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomjobsbegin.dart';
import 'package:progectbalkies/view/widget/costomlistveiwforyou.dart';
import 'package:progectbalkies/view/widget/costomtextfilterwant.dart';
import 'package:progectbalkies/view/widget/costomtitlebegin.dart';

// ignore: must_be_immutable, camel_case_types
class businesfilterPage extends StatefulWidget {
  const businesfilterPage({super.key});

  @override
  State<businesfilterPage> createState() => _businesfilterPageState();
}

// ignore: camel_case_types
class _businesfilterPageState extends State<businesfilterPage>
    with TickerProviderStateMixin {
  List<Color> backgroundColor = [
    const Color.fromRGBO(200, 162, 249, 1),
    const Color.fromARGB(255, 145, 221, 148),
    // const Color.fromARGB(255, 161, 252, 232),
    const Color.fromARGB(177, 227, 124, 186),
    const Color.fromARGB(255, 119, 142, 244),
    // const Color.fromARGB(186, 213, 247, 103),
    const Color.fromARGB(255, 255, 136, 136),
    const Color.fromARGB(255, 246, 171, 191),
  ];

  int currentIndex = 0;
  Color getNextColor() {
    Color nextColor = backgroundColor[currentIndex];
    currentIndex = (currentIndex + 1) % backgroundColor.length;
    return nextColor;
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 9, vsync: this);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: ListView(
          children: [
            const costomtitlebegin(mycolor: AppColor.black,
              fontSize: 25,
              title: "Your Busines",
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 20,
            ),
            const costomtextwantfilter(),
            const SizedBox(
              height: 20,
            ),
            const costomtitlebegin(mycolor: AppColor.black,
              title: "For You ",
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
            const SizedBox(
              height: 10,
            ),
            costomlistveiwforyou(),
            const SizedBox(
              height: 10,
            ),
            const costomtitlebegin(mycolor: AppColor.black,
              title: " Category jobs ",
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
            // Container(
            //   // height: 10,
            //   child: TabBar(tabs: [
            //     Tab(
            //       text: "plases",
            //     ),
            //     Tab(
            //       text: "rebousenation",
            //     )
            //   ]),
            // ),
            // Container(
            //   // height: 10,
            //   child: TabBarView(children: []),
            // )
            SizedBox(
              // color: const Color.fromARGB(255, 246, 171, 191),
              // height: 373,
              width: double.infinity,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        labelPadding:
                            const EdgeInsets.only(left: 20, right: 20),
                        isScrollable: true,
                        controller: tabController,
                        labelColor: AppColor.black,
                        unselectedLabelColor: AppColor.mov,
                        indicator: CircleTabIndicator(
                            color: AppColor.black, radius: 3),
                        tabs: [
                          Tab(
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColor.mov),
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 25,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 3),
                                  child: Text("All"),
                                )),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.mov),
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 25,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                child: Text("Penologist"),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.mov),
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 25,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                child: Text("Emulative"),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.mov),
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 25,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                child: Text("ScoftWar"),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.mov),
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 25,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                child: Text("Programmed"),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.mov),
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 25,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                child: Text("Proctology"),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.mov),
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 25,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                child: Text("Dentisty"),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.mov),
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 25,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                child: Text("trade"),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.mov),
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15)),
                              height: 25,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                child: Text("medicen"),
                              )),
                        ]),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 650,
                    child: TabBarView(controller: tabController, children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: costomJobsbegin(
                                backgroundcolor: getNextColor(),
                                nameCompany: "TackTrove LLc",
                                nameJobs: "Senior Softwar Enginer",
                                timeJobs: 'Full Time',
                                placeJobs: "North Amrica",
                                image: "assets/image/logoo (1).png",
                                backtextcolor: AppColor.white,
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 160,
                        decoration: BoxDecoration(
                          color: AppColor.gren,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ListView.builder(
                          // scrollDirection: Axis.horizontal,

                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: costomJobsbegin(
                                backgroundcolor: AppColor.white,
                                nameCompany: "TackTrove LLc",
                                nameJobs: "Senior Softwar Enginer",
                                timeJobs: 'Full Time',
                                placeJobs: "North Amrica",
                                image: "assets/image/logoo (1).png",
                                backtextcolor: AppColor.yallo,
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ListView.builder(
                          // scrollDirection: Axis.horizontal,

                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: costomJobsbegin(
                                backgroundcolor: getNextColor(),
                                nameCompany: "TackTrove LLc",
                                nameJobs: "Senior Softwar Enginer",
                                timeJobs: 'Full Time',
                                placeJobs: "North Amrica",
                                image: "assets/image/logoo (1).png",
                                backtextcolor: AppColor.white,
                              ),
                            );
                          },
                        ),
                      ),
                      const Text("data"),
                      const Text("222222"),
                      const Text("data3345"),
                      const Text("data"),
                      const Text("222222"),
                      const Text("data3345"),
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  // ignore: non_constant_identifier_names
}

// ignore: must_be_immutable
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  late final Color color;
  final double radius;
  _CirclePainter({
    required this.color,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    late Paint paint;
    paint = Paint()..color = color;
    paint = paint..isAntiAlias = true;

    final Offset circleoffset = offset +
        Offset(
            configuration.size!.width / 2, configuration.size!.height - radius);
    canvas.drawCircle(circleoffset, radius, paint);
  }
}
