import 'package:flutter/material.dart';


import 'hadeth_details.dart';
import 'hadeth_tab.dart';

class HadethModel extends StatelessWidget {

static String routeName = 'Hadeth Model';

   Hadethcon hadeth;
   HadethModel(this.hadeth);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: ()
      {
        Navigator.pushNamed(context, HadethDetail.routeName,
            arguments: hadeth);
      },
      child: Center(
        child: Text(
          '${hadeth.title}',style: Theme.of(context).textTheme.headline1,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }

}

