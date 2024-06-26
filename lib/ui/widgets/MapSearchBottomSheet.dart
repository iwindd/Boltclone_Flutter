import 'package:boltclone_stacked/ui/widgets/DraggableBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:boltclone_stacked/app/app.locator.dart';
import 'package:boltclone_stacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MapSearchBottomSheet extends StatefulWidget {
  final VoidCallback goBack;
  const MapSearchBottomSheet({super.key, required this.goBack});

  @override
  State<MapSearchBottomSheet> createState() => _MapSearchBottomSheetState();
}

class _MapSearchBottomSheetState extends State<MapSearchBottomSheet> {
  final _navigationService = locator<NavigationService>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DraggableBottomSheet(
        goBack: widget.goBack,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundColor: Color.fromARGB(255, 233, 233, 233),
                  child: Icon(Icons.search),
                ),
                SizedBox(width: 8),
                Text(
                  "ให้ไปที่ไหน?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ));
  }

  void onTap() async {
    await _navigationService.navigateTo(
      Routes.searchView,
      transition: TransitionsBuilders.slideTop,
    );
  }
}
