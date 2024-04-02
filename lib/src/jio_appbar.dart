import 'package:flutter/material.dart';
import 'package:jio_widget/jio_widget.dart';

class JioAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String image;
  final String title;
  final String subtitle;
  final List<IconButton>? actionList;
  final Color textColor;
  final Color iconColor;
  final bool autoLeading;
  final bool showLeading;
  final bool centerTitle;

  const JioAppbar(
      {super.key,
      this.image = kBlankString,
      required this.title,
      this.subtitle = kBlankString,
      this.actionList,
      this.autoLeading = false,
      this.showLeading = false,
      this.centerTitle = false,
      this.textColor = kWhiteColor,
      this.iconColor = kOrangeColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Flex(
        direction: Axis.horizontal,
        children: [
          !showLeading
              ? const SizedBox()
              : GestureDetector(
                  onTap: () => hideLoadingDialog,
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: kBlackColor,
                    ),
                  ),
                ),
          ClipOval(
            child: image == kBlankString
                ? const Icon(Icons.person, size: 40)
                : Image.network(
                    image,
                    fit: BoxFit.contain,
                    height: 56,
                    filterQuality: FilterQuality.low,
                    loadingBuilder: (context, child, loadingProgress) =>
                        const JioIndicator(),
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.person),
                  ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const RadialGradient(
                        colors: [Colors.yellow, Colors.deepOrange],
                        center: Alignment.topLeft,
                        radius: 1.0,
                        tileMode: TileMode.clamp)
                    .createShader(bounds);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: kGreenColor.shade400,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      automaticallyImplyLeading: autoLeading,
      centerTitle: centerTitle,
      actionsIconTheme: IconTheme.of(context).copyWith(color: iconColor),
      iconTheme: IconTheme.of(context).copyWith(color: iconColor),
      actions: actionList ?? [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
