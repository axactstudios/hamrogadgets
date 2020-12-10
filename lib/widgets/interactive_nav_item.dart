import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hamrogadgets/Constants/styles.dart';
import 'package:universal_html/html.dart' as html;

class InteractiveNavItem extends MouseRegion {
  static final appContainer =
      html.window.document.querySelectorAll('flt-glass-pane')[0];

  InteractiveNavItem(
      {Widget child,
      String text,
      String imagePath,
      TextDecoration decoration,
      Color color,
      Icon icon})
      : super(
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
          },
          child: InteractiveText(
            text: text,
            decoration: decoration,
            imagePath: imagePath,
            icon: icon,
            color: color,
          ),
        );
}

class InteractiveText extends StatefulWidget {
  final String text;
  final String imagePath;
  final TextDecoration decoration;
  final Color color;
  final Icon icon;

  const InteractiveText(
      {this.text, this.imagePath, this.decoration, this.color, this.icon});

  @override
  InteractiveTextState createState() => InteractiveTextState();
}

class InteractiveTextState extends State<InteractiveText> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => _hovered(true),
      onExit: (_) => _hovered(false),
      child: widget.icon != null
          ? widget.icon
          : widget.imagePath == null
              ? Text(
                  widget.text,
                  style: _hovering
                      ? Styles.customTextStyle(
                          textDecoration: widget.decoration != null
                              ? widget.decoration
                              : TextDecoration.none,
                          color: widget.color,
                          fontSize: 12.5,
                          fontWeight: FontWeight.w500)
                      : Styles.customTextStyle(
                          textDecoration: widget.decoration != null
                              ? widget.decoration
                              : TextDecoration.none,
                          color: widget.color,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                )
              : Image.asset(widget.imagePath),
    );
  }

  _hovered(bool hovered) {
    setState(() {
      _hovering = hovered;
    });
  }
}
