import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../flutter_flow/flutter_flow_theme.dart';


void popupConfirm(BuildContext context, String content, void Function()? btnOk) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.noHeader,
    animType: AnimType.scale,
    body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: SvgPicture.asset(
              'assets/images/undraw_in_the_office_re_jtgc.svg',
              width: MediaQuery.of(context).size.width * 0.45,
              height: 150,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  content,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).stateOrange3,
                        fontSize: 16,
                        
                      ),
                ),
              ],
            ),
          ),       
        ],
      ),
    ),
    title: 'Xác nhận',
    titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    desc: content,
    descTextStyle: TextStyle(fontSize: 15),
    btnOkText: "Đồng ý",
    btnCancelText: "Thoát",
    btnCancelOnPress: () {},
    btnOkOnPress: btnOk
  )..show();
}
