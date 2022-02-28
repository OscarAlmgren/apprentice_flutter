import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../models/models.dart';

class GroceryTile extends StatelessWidget {
  final GroceryItem item;
  final Function(bool?)? onComplete;
  final TextDecoration _textDecoration;
  GroceryTile({
    Key? key,
    required this.item,
    this.onComplete,
  })  : _textDecoration =
            item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // todo 22
          // todo 23
        ],
      ),
    );
  }

  Widget buildImportance() {
    switch (item.importance) {
      case Importance.low:
        return Text(
          'Low',
          style: GoogleFonts.lato(decoration: _textDecoration),
        );
      case Importance.medium:
        return Text(
          'Medium',
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w800, decoration: _textDecoration),
        );
      case Importance.high:
        return Text(
          'High',
          style: GoogleFonts.lato(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              decoration: _textDecoration),
        );
      default:
        throw Exception('This importance type does not exist');
    }
  }

  Widget buildDate() {
    final dateFormatter = DateFormat('MMMM dd h:mm a');
    final dateString = dateFormatter.format(item.date);
    return Text(
      dateString,
      style: TextStyle(decoration: _textDecoration),
    );
  }

  Widget buildCheckbox() {
    return Checkbox(value: item.isComplete, onChanged: onComplete);
  }
}
