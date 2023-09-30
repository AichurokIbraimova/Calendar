import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/constants/app_colors.dart';
import 'package:login_page/constants/app_text_styles.dart';
import 'package:login_page/widgets/custom_button.dart';

class InvitePage extends StatefulWidget {
  const InvitePage({super.key});

  @override
  State<InvitePage> createState() => _InvitePageState();
}



class _InvitePageState extends State<InvitePage> {
 

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
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 60,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: AppColors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
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
                    Image.asset('assets/image.png')
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
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
                  const Text("ПРИГЛАШЕНИЯ", style: AppTextStyles.priglasheniya)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Row(
                    children: [
                      Container(
                        width: 236,
                        height: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff374658), Color(0xff364556)],
                          ),
                        ),
                        child: const Center(
                          child: Text("АКТИВНЫЕ ПРИГЛАШЕНИЯ",
                              style: AppTextStyles.activPrig),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 138,
                          height: 47,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xff374658), Color(0xff364556)],
                            ),
                          ),
                          child: const Center(
                            child:
                                Text("АРХИВ", style: AppTextStyles.activPrig),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
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
                          Text("ID 005412", style: AppTextStyles.id)
                        ],
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      // InkWell(onTap: () {

                      // },
                      //   child:
                      Image.asset('assets/Group.png')
                      //)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('17 МАРТА 2023 ',
                      style: AppTextStyles.priglasheniya),
                  const SizedBox(
                    height: 41,
                  ),
                  Row(
                    children: [
                      const Text(
                        '10:00',
                        style: AppTextStyles.time,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 196,
                          height: 7,
                          decoration:
                              const BoxDecoration(color: Color(0xff2fe59a))),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xff44e096), Color(0x6300ff95)],
                              )),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: AppColors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        '13:00',
                        style: AppTextStyles.time,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 196,
                          height: 7,
                          decoration:
                              const BoxDecoration(color: Color(0xff2fe59a))),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xff44e096), Color(0x6300ff95)],
                              )),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: AppColors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        '17:00',
                        style: AppTextStyles.time,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 196,
                          height: 7,
                          decoration:
                              const BoxDecoration(color: Color(0xff2fe59a))),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xff44e096), Color(0x6300ff95)],
                              )),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("ВЫБЕРЕТЕ ИЗ ПРЕДЛОЖЕННЫХ ВАРИАНТОВ",
                  style: AppTextStyles.activPrig),
              const SizedBox(
                height: 30,
              ),
              //  GestureDetector(onTap: () {
              //   showDialog(context: context, builder:
              //   (BuildContext context) {
              //     return AlertDialog(
              //       title: Text('data'),
              //       content: ListView(
              //         children: List.generate(meetingListDay.length,
              //         (index) {
              //           return Row(
              //             children: [
              //               Text(meetingListDay[index].keys.single),
              //               Container(
              //                 height: 4,
              //                 width: 30,
              //                 color: Colors.amber,

              //               ),
              //               Checkbox(value: false, onChanged: (val) {

              //               })
              //             ],
              //           );
              //         })
              //       ),
              //     );
              //   }
              //   );
              //  } ,
              CustomButton(
                text: 'ОТПРАВИТЬ',
                colors: Colors.white,
                style: AppTextStyles.otpravit,
                onPressed: () {
                  // showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return AlertDialog(
                  //         title: Text('data'),
                  //         content: ListView(
                  //             children: List.generate(meetingListDay.length,
                  //                 (index) {
                  //           return Row(
                  //             children: [
                  //               Text(meetingListDay[index].keys.single),
                  //               Container(
                  //                 height: 4,
                  //                 width: 30,
                  //                 color: Colors.amber,
                  //               ),
                  //               Checkbox(value: false, onChanged: (val) {})
                  //             ],
                  //           );
                  //         })),
                  //       );
                  //     });
                },
              ),

              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Text(
                    "ПЕРЕЙТИ В КАЛЕНДАРЬ СЕРГЕЯ ДЛЯ \nВЫБОРА ИЗ ДРУГИХ ВАРИАНТОВ",
                    style: AppTextStyles.activPrig,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 45,
                      height: 31,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xff44e096), Color(0x6300ff95)],
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppColors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
