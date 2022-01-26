import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:save_money_app/src/models/week_model.dart';
import 'package:save_money_app/src/stores/week_store.dart';
import 'package:save_money_app/src/utils/constants.dart';

class CustomModalWidget extends StatefulWidget {
  const CustomModalWidget({Key? key}) : super(key: key);

  @override
  State<CustomModalWidget> createState() => _CustomModalWidgetState();
}

class _CustomModalWidgetState extends State<CustomModalWidget> {
  late final GlobalKey<FormState> form;
  late final TextEditingController _formFieldController;
  late final WeekStore _weekStore;

  @override
  void initState() {
    form = GlobalKey<FormState>();
    _formFieldController = TextEditingController();
    _weekStore = context.read<WeekStore>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 250,
        bottom: 250,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: primaryColor.withOpacity(0.25),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Semana 47',
            style: GoogleFonts.outfit().copyWith(
              fontSize: 24,
              fontWeight: FontWeight.normal,
              color: primaryColor,
            ),
          ),
          Material(
            color: Colors.transparent,
            shape: const Border(
              bottom: BorderSide(
                color: primaryColor,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'R\$ ',
                  style: GoogleFonts.outfit().copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.normal,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Form(
                    key: form,
                    child: TextFormField(
                      controller: _formFieldController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*'))
                      ],
                      style: GoogleFonts.outfit().copyWith(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Informe um valor.';
                        } else if (int.parse(value) == 0) {
                          return 'O valor deve ser maior que zero.';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                child: const Icon(
                  Icons.close_rounded,
                  color: errorColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    const Size(120, 60),
                  ),
                  overlayColor: MaterialStateProperty.all(
                    errorColor.withOpacity(0.5),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      side: const BorderSide(
                        color: errorColor,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
              ),
              OutlinedButton(
                child: const Icon(
                  Icons.check,
                  color: backgroundColor,
                ),
                onPressed: () {
                  if (form.currentState!.validate()) {
                    WeekModel weekModel = WeekModel(
                      id: Random().nextDouble(),
                      week: 'Semana 00',
                      value: double.parse(_formFieldController.text),
                    );
                    _weekStore.insertWeekModel(weekModel);

                    Navigator.pop(context);
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(secondaryColor),
                  fixedSize: MaterialStateProperty.all(
                    const Size(120, 60),
                  ),
                  overlayColor: MaterialStateProperty.all(
                    backgroundColor.withOpacity(0.5),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
