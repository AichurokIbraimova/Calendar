import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/constants/app_colors.dart';
import 'package:login_page/constants/app_text_styles.dart';

class SelectDatePage extends StatefulWidget {
  SelectDatePage({super.key});

  List<Map<String, String>> meetingListDay1 = [
    {'11:00': 'Втреча с Андреем Михеевым'},
    {'13:00': ''},
    {'16:00': 'Втреча с Андреем Михеевым'},
    {'18:00': ''},
    {'19:00': ''},
    {'20:00': ''},
    // {'Демонстрировать календарь' : ''}
  ];

  @override
  State<SelectDatePage> createState() => _SelectDatePageState();
}

class _SelectDatePageState extends State<SelectDatePage> {
  bool isDialogOpen = false;

  void _openDialog() {
    setState(() {
      isDialogOpen = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPageColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 27),
                      child: Icon(
                        Icons.menu,
                        color: AppColors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Row(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Ирина Варламова',
                            style: TextStyle(
                              color: AppColors.white,
                            ),
                          ),
                          Text(
                            'ID 001411',
                            style: TextStyle(
                              color: AppColors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/image.png'),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.container1,
                        ),
                        child: Image.asset('assets/vector1.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text("ВЫБЕРИТЕ ДАТУ И ВРЕМЯ",
                        style: AppTextStyles.priglasheniya)
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Row(children: [
                      SvgPicture.asset('assets/Vector3.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/image2.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Сергей Прохоров",
                              style: AppTextStyles.activPrig),
                          Text("ID 005412", style: AppTextStyles.id),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset('assets/Group.png'),
                      )
                    ]),
                  ),
                  DatePicker(monthTextStyle: TextStyle(color: Colors.black),
                    height: 100,
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: const Color(0xff2b7472),
                    selectedTextColor: Colors.white,
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        // _selectedValue = date;
                      });
                    },
                  ),
                  Container(
                    height: 428,
                    decoration: const BoxDecoration(
                      color: Color(0xff114645),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          const RowWidget(text: '10:00'),
                          const RowWidget(text: '13:00'),
                          const RowWidget(
                            text: '16:00',
                          ),
                          const RowWidget(
                            text: '18:00',
                          ),
                          const RowWidget(
                            text: '19:00',
                          ),
                          const RowWidget(
                            text: '20:00',
                          ),
                          const SizedBox(
                            height: 130,
                          ),
                          Container(
                            width: 220,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff324050),
                            ),
                            child: const Center(
                              child:  Text(
                                  "ВЫ НАХОДИТЕСЬ В КАЛЕНДАРЕ СЕРГЕЯ \nВЫБЕРЕТЕ ДАТУ И ВРЕМЯ",
                                  style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.white)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 37, right: 53, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: AppTextStyles.time,
          ),
          const SizedBox(
            width: 20,
          ),
          const ContainerWidth(),
          const SizedBox(
            width: 20,
          ),
          const ContainerAdd(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class ContainerWidth extends StatelessWidget {
  const ContainerWidth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 7, decoration: const BoxDecoration(color: Color(0xff2fe59a))),
    );
  }
}

class ContainerAdd extends StatelessWidget {
  const ContainerAdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 21,
      height: 21,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xff44e096), Color(0x6300ff95)],
        ),
      ),
      child: const Icon(
        Icons.add,
        color: AppColors.white,
      ),
    );
  }
}
