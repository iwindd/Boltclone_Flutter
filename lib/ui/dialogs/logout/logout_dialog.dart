import 'package:flutter/material.dart';
import 'package:boltclone_stacked/ui/common/app_colors.dart';
import 'package:boltclone_stacked/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'logout_dialog_model.dart';

class LogoutDialog extends StackedView<LogoutDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const LogoutDialog({
    super.key,
    required this.request,
    required this.completer,
  });

  @override
  Widget builder(
    BuildContext context,
    LogoutDialogModel viewModel,
    Widget? child,
  ) {
    final theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (request.description != null) ...[
                        verticalSpaceTiny,
                        Text(
                          request.description!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: kcMediumGrey,
                          ),
                          maxLines: 3,
                          softWrap: true,
                        ),
                      ],
                    ],
                  ),
                )
              ],
            ),
            verticalSpaceMedium,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => completer(DialogResponse(confirmed: false)),
                  child: Container(
                    height: 50,
                    width: 100,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text("ย้อนกลับ"),
                  ),
                ),
                GestureDetector(
                  onTap: () => completer(DialogResponse(confirmed: true)),
                  child: Container(
                    height: 50,
                    width: 100,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.error,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      "ใช่",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
/*             GestureDetector(
              onTap: () => completer(DialogResponse(confirmed: true)),
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Got it',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ), */
          ],
        ),
      ),
    );
  }

  @override
  LogoutDialogModel viewModelBuilder(BuildContext context) =>
      LogoutDialogModel();
}
