
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tecnical_test/home/components/pop_up_cancel_widget.dart';
import 'package:tecnical_test/home/components/tile_text_widget.dart';
import 'package:tecnical_test/home/home_controller.dart';

import 'components/empty_data_widget.dart';
import 'components/input_my_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomeController controller = Modular.get<HomeController>();

  @override
  void initState() {
    controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF1f5465),Color(0xFF2d958d)])),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
              child:  SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                height: MediaQuery.of(context).size.height * 0.5,
                                child: controller.textList.isEmpty ? const EmptyDataWidget() :  ListView.separated(
                                  itemCount: controller.textList.length,
                                  itemBuilder:(BuildContext context, int index) => TileTextWidget(description: controller.textList[index],
                                      delete: () => showDialog(context: context, builder: (context) => PopUpCancelWidget(
                                          delete: () => controller.remove(index).then((value) { Navigator.pop(context);}))),
                                      edit: () => controller.turnOnUpdate(index, controller.textList[index])) ,
                                  separatorBuilder: (BuildContext context, int index) => const Divider(height: 1,color: Colors.black),
                          ),
                              )),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                          InputMyTextWidget(
                              focus: controller.focus,
                              controller: controller.editingController,
                              hasError: controller.errorTextValidation,
                              errorField: controller.errorText,
                              key: const Key("inputTextCard"),
                              onSubmitted: controller.addOrUpdate),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
