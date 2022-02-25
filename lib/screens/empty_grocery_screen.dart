import 'package:apprentice_flutter/fooderlich_theme.dart';
import 'package:flutter/material.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/fooderlich_assets/empty_list.png'),
              ),
            ),
            Text(
              'No Groceries',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              'Shoppingg ingredients for?\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            MaterialButton(
              child: Text(
                'Browse recipes',
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),

              // textColor: FooderlichTheme.darkTextTheme.headline6?.color,
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              onPressed: (() {
                // go to recipes
              }),
            )
          ],
        ),
      ),
    );
  }
}