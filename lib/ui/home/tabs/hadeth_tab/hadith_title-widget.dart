import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/hadeth_tab/hadith_detials/hadith_details.dart';

import 'hadeth_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithItem hadithItem;

  HadithTitleWidget({required this.hadithItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, HadithDetails.routeName,
            arguments: hadithItem);
      },
      child: Container(
        margin: EdgeInsets.all(12),
        child: Text(
          hadithItem.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
