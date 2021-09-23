import 'package:flutter/material.dart';
import 'package:home_project/constants/path_strings.dart';

class MultiLeadsAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize; // default is 56.0

  final Widget? title;
  final bool showBackButton;
  final bool showTopButton;

  MultiLeadsAppBar({
    Key? key,
    this.title,
    this.showBackButton = true,
    this.showTopButton = true
  }) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  _MultiLeadsAppBarState createState() => _MultiLeadsAppBarState();
}

class _MultiLeadsAppBarState extends State<MultiLeadsAppBar>{

  @override
  Widget build(BuildContext context) {
    List<Widget> leadIcons = [];
    if (widget.showBackButton) {
      leadIcons.add(
          IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios_outlined)
          )
      );
    }

    if (widget.showTopButton) {
      leadIcons.add(
          IconButton(
              onPressed: () => Navigator.of(context).popUntil(
                  ModalRoute.withName(PathStrings.home)
              ),
              icon: Icon(Icons.home)
          )
      );
    }

    return AppBar(
      titleSpacing: 0,
      title: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: leadIcons,
          ),
          widget.title ?? Text('')
        ],
      ),
      automaticallyImplyLeading: false,
      centerTitle: true,
    );
  }
}

/*class MultiLeadsAppBar extends S {
  MultiLeadsAppBar({Widget? title, bool automaticallyImplyLeading = true}): super(
    titleSpacing: 0,
    title: Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => automaticallyImplyLeading ? Navigator.of(super.context),
                icon: Icon(Icons.arrow_left)
            ),
            IconButton(
                onPressed: () => {},
                icon: Icon(Icons.arrow_left)
            ),
          ],
        ),
        title ?? Text('')
      ],
    ),
    automaticallyImplyLeading: false,
    centerTitle: true,
  );
}*/