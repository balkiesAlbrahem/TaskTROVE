import 'package:flutter/material.dart';

class TextInputSubmit extends StatefulWidget {
  final Color? backgroundColor, caretColor;
  final double? elevation, caretHeight, caretWidth, gap;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? hintStyle, textStyle;
  final String? hintText;
  final Widget? leading;
  final List<Widget> trailings;
  final void Function(String text)? onChange, onKeyPress, onSubmitted;

  const TextInputSubmit({
    super.key,
    this.controller,
    this.backgroundColor,
    this.elevation,
    this.padding,
    this.hintStyle,
    this.textStyle,
    this.borderRadius,
    this.hintText,
    this.leading,
    this.onChange,
    this.onKeyPress,
    this.caretColor,
    this.caretHeight,
    this.caretWidth,
    this.focusNode,
    this.gap,
    this.onSubmitted,
    this.trailings = const [],
  });

  @override
  State<TextInputSubmit> createState() => _TextInputSubmitState();
}

class _TextInputSubmitState extends State<TextInputSubmit> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  void _textListener(final String text) {
    widget.onChange?.call(text);
    if (text.isNotEmpty) widget.onKeyPress?.call(text.characters.last);
  }

  void _mainListener() {
    _textListener(_controller.text);
  }

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();

    _controller.addListener(_mainListener);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final leading = widget.leading;
    final hintStyle = widget.hintStyle;
    final hintText = widget.hintText ?? 'Input';
    final initTextStyle = widget.textStyle ?? const TextStyle();
    final backgroundColor = WidgetStatePropertyAll(widget.backgroundColor);
    final padding = widget.padding;
    final borderRadius = widget.borderRadius ?? BorderRadius.circular(99999999);
    final trailings = widget.trailings;
    final caretHeight = widget.caretHeight;
    final caretWidth = widget.caretWidth;
    final caretColor = widget.caretColor;

    //? updating the line height to center the caret if the caret has a specified height.
    final TextStyle textStyle;
    if (caretHeight != null) {
      final textHeight = initTextStyle.height! * initTextStyle.fontSize!;
      final heightDifference = textHeight - caretHeight;
      final newLineHeight =
          (caretHeight + heightDifference / 4) / initTextStyle.fontSize!;
      textStyle = initTextStyle.copyWith(height: newLineHeight);
    } else {
      textStyle = initTextStyle;
    }

    return GestureDetector(
      onTap: () {
        if (!_focusNode.hasFocus) {
          _focusNode.requestFocus();
        }
      },
      behavior: HitTestBehavior.deferToChild,
      child: Container(
        height: 70,
        width: 410,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor.value,
          borderRadius: borderRadius,
        ),
        child: Row(
          children: [
            if (leading != null) leading,
            if (leading != null) SizedBox(width: widget.gap),
            Expanded(
              child: TextField(
                controller: _controller,
                onSubmitted: widget.onSubmitted,
                cursorColor: caretColor,
                cursorHeight: caretHeight,
                cursorWidth: caretWidth ?? 2,
                focusNode: _focusNode,
                style: textStyle,
                scrollPadding: const EdgeInsets.all(0),
                textAlignVertical: TextAlignVertical.center,
                keyboardAppearance: Brightness.dark,
                onChanged: widget.onChange,
                decoration: InputDecoration.collapsed(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: hintStyle,
                ),
              ),
            ),
            if (trailings.isNotEmpty) SizedBox(width: widget.gap),
            ...trailings,
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();

    super.dispose();
  }
}
