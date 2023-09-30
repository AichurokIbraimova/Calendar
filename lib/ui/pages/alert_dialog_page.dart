import 'package:flutter/material.dart';
import 'package:login_page/constants/app_colors.dart';
import 'package:login_page/widgets/custom_button.dart';

class AlertDialogPage extends StatefulWidget {
  AlertDialogPage({super.key});

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

const List<String> list = <String>[
  '17 МАРТА',
  '18 МАРТА',
  '19 МАРТА',
  '20 МАРТА'
];


class _AlertDialogPageState extends State<AlertDialogPage> {
  List<Map<String, String>> meetingListDay = [
    {'11:00': 'Втреча с Андреем Михеевым'},
    {'13:00': ''},
    {'17:00': 'Втреча с Андреем Михеевым'},
    {'19:00': ''},
    {'Демонстрировать календарь' : ''}
  ];
bool isSelected1 = false;
  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;

    return Scaffold(
        body: Column(
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  backgroundColor: const Color.fromRGBO(45, 57, 71, 1),
                  // title:  Text('data'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          DropdownMenu<String>(
                            textStyle: const TextStyle(color: Colors.white),
                            initialSelection: list.first,
                            onSelected: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            dropdownMenuEntries: list
                                .map<DropdownMenuEntry<String>>((String value) {
                              return DropdownMenuEntry<String>(
                                  value: value, label: value);
                            }).toList(),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                    width: 37,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xff475e7a))),
                              ),
                              Container(
                                width: 19.547170639038086,
                                height: 19.547170639038086,
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("ОТПРАВИТЬ ПРИГЛАШЕНИЕ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text("КОМУ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 156,
                            height: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xffd9d9d9)),
                            child: const Text("ID",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          children: List.generate(
                            meetingListDay.length,
                            (index) {
                              return LineShowDialog(
                                elem: meetingListDay[index],
                              );

                              // Row(
                              //   children: [
                              //     Text(meetingListDay[index].keys.single),
                              //     Container(
                              //       height: 4,
                              //       width: 30,
                              //       color: Colors.amber,
                              //     ),
                              //     Checkbox(
                              //       value: false,
                              //       onChanged: (val) {},
                              //     ),
                              //   ],
                              // );
                            },
                          ),
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     Checkbox(
                      //       checkColor: Colors.green,
                      //         value: isSelected1,
                      //         onChanged: (val) {
                      //           setState(() {
                      //             isSelected1 = val!;
                      //           });
                      //         }),
                      //     const Text("Демонстрировать календарь ",
                      //         style: TextStyle(
                      //             fontSize: 13,
                      //             fontWeight: FontWeight.w400,
                      //             color: Colors.white))
                      //   ],
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: CustomButton(
                          text: 'ПРИГЛАСИТЬ',
                          colors: Color.fromRGBO(68, 224, 150, 1),
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.03,
              width: MediaQuery.of(context).size.width * 0.3,
              color: Colors.green,
              child: const Text('ПРИГЛАСИТЬ'),
            ),
          ),
        ),
      ],
    ));
  }
}

class LineShowDialog extends StatefulWidget {
  LineShowDialog({super.key, required this.elem});

  Map elem;
  bool isSelected = false;
  
  @override
  State<LineShowDialog> createState() => _LineShowDialogState();
}

class _LineShowDialogState extends State<LineShowDialog> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.elem.keys.single,
          style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: AppColors.white),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 1,
          width: 113,
          color: const Color.fromRGBO(63, 77, 94, 1),
        ),
        const SizedBox(
          width: 10,
        ),
        Checkbox(
          activeColor: const Color.fromRGBO(45, 57, 71, 1),
          checkColor: Colors.green,
          focusColor: Colors.green,
          value: widget.isSelected,
          onChanged: (val) {
            setState(() {
              widget.isSelected = val ?? false;
            });
          },
        ),
      ],
    );
  }
}
