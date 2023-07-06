
import 'package:flutter/cupertino.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  Widget _buildPageHeadTitle(String title){
    return Container(
      child: Text(
        title,
        style: const TextStyle(
          //color: AppColors.primaryElementText,

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
