// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kids_learning/widget/textStyle.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final Color? textTitleColor;
  final Color? textIconColor;
  final String? icon;
  final String? title;
  final double? height;
  final List<Widget>? actions;
  final bool hideBack;
  Function()? onTap;
  final double? fontSize;
  final double? iconWidth;
  final double? iconheight;

  WidgetAppBar({super.key, 
    this.backgroundColor = Colors.transparent,
    this.textTitleColor ,
    this.textIconColor,
    this.icon,
    this.title = '',
    this.actions,
    this.height: kToolbarHeight,
    this.hideBack = false,
    this.onTap,
    this.fontSize,
    this.iconWidth,
    this.iconheight
  });

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      toolbarHeight: preferredSize.height,
      elevation: 0,
      iconTheme: IconThemeData(
        color: textIconColor,
      ),
      leadingWidth: 80,
      leading: hideBack
          ? null
          : icon == null
              ? null //const BackButton()
              : IconButton(
                  icon: Image.asset(
                    icon!,
                    height: iconheight,
                    width: iconWidth,
                  ),
                  onPressed: onTap == null
                      ? () {
                          Navigator.pop(context, true);
                        }
                      : onTap!,
                  //  () {
                  //   if (onTap == null) {
                  //   Navigator.pop(context, true);
                  //   }else {
                  //     onTap;
                  //   }
                  // },
                ),
      title: Text(
        title!,
        maxLines: 1,
        style:
            CustomTextStyle.bold.copyWith(color: textTitleColor, fontSize: fontSize),
      ),
      backgroundColor: backgroundColor,
      centerTitle: true,
    );
  }
}