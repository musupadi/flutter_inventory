import 'package:flutter/material.dart';
import 'package:myapp/Color/colors.dart';

class AnnouncementAdapter extends StatefulWidget {
  String id;
  String title;
  String description;
  String temporary;
  String date;
  String end_date;
  String id_status;
  String author;
  AnnouncementAdapter({
    required this.id,
    required this.title,
    required this.description,
    required this.temporary,
    required this.date,
    required this.end_date,
    required this.id_status,
    required this.author,
    super.key}
  );

  @override
  State<AnnouncementAdapter> createState() => _AnnouncementAdapterState();
}

class _AnnouncementAdapterState extends State<AnnouncementAdapter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: PrimaryColors()
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(widget.title),
            Text(widget.description)
          ],
        ),
      ),
    );
  }
}