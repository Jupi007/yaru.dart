import 'package:flutter/material.dart';
import 'package:yaru/icons.dart';

import 'yaru_icon_button.dart';

const _kCloseButtonSize = 32.0;

class YaruCloseButton extends StatelessWidget {
  const YaruCloseButton({
    super.key,
    this.enabled = true,
    this.onPressed,
    this.alignment = Alignment.center,
    this.icon,
    this.semanticLabel,
  });

  final bool enabled;
  final VoidCallback? onPressed;
  final AlignmentGeometry alignment;
  final Widget? icon;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: YaruIconButton(
        padding: EdgeInsets.zero,
        onPressed: enabled ? onPressed ?? Navigator.of(context).maybePop : null,
        icon:
            icon ?? Icon(YaruIcons.window_close, semanticLabel: semanticLabel),
        iconSize: _kCloseButtonSize,
      ),
    );
  }
}
