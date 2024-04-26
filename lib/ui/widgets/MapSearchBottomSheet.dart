import 'package:boltclone_stacked/ui/widgets/DraggableBottomSheet.dart';
import 'package:flutter/material.dart';

class MapSearchBottomSheet extends StatefulWidget {
  const MapSearchBottomSheet({super.key});

  @override
  State<MapSearchBottomSheet> createState() => _MapSearchBottomSheetState();
}

class _MapSearchBottomSheetState extends State<MapSearchBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableBottomSheet(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: const Row(
          children: [
            /* Icon(Icons.search), */
            CircleAvatar(
              radius: 17,
              backgroundColor: Colors.black12,
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
    );
  }
}
