import 'package:flutter/material.dart';

class DialogCustom extends StatelessWidget {
  final String? title;
  final String? content;
  final String? buttonText;
  final Widget? customContent;
  final VoidCallback? onPressed;
  final VoidCallback? onCancel;
  final String? txtConfirmButton;
  final String? txtCancelButton;
  const DialogCustom({
    super.key,
    this.title,
    this.content,
    this.buttonText,
    this.onPressed,
    this.onCancel,
    this.txtConfirmButton = 'Confirmar',
    this.txtCancelButton = 'Cancelar',
    this.customContent,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? 'Custom Dialog'),
      content: customContent ?? Text(content ?? 'Dialog content goes here.'),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: Text(txtCancelButton ?? 'Cancelar'),
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(txtConfirmButton ?? 'Confirmar'),
        ),
      ],
    );
  }
}
