import 'package:flutter/material.dart';
import 'package:hst_project/feature/login/login_view.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.white100,
      margin: CustomSizeConstants.medium.marginHorizontal,
      child: Container(
        padding: CustomSizeConstants.low.padding,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: CustomBoxDecorationItems.getActionButtonsDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ActionButton(
                icon: Icons.arrow_downward_outlined,
                label: 'Ödeme Al',
                onPressed: () {},
              ),
            ),
            Expanded(
              child: ActionButton(
                icon: Icons.link,
                label: 'Linkle Öde',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
              ),
            ),
            Expanded(
              child: ActionButton(
                icon: Icons.attach_money,
                label: 'Temassız Öde',
                onPressed: () {},
              ),
            ),
            Expanded(
              child: ActionButton(
                icon: Icons.apps_sharp,
                label: 'Daha Fazla',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton(
      {super.key, required this.icon, required this.label, this.onPressed});

  final IconData icon;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton.outlined(
          onPressed: onPressed,
          icon: Icon(icon),
        ),
        //TODO: Düzenleencek
        Text(label, maxLines: 1, style: TextStyle(fontSize: 12),)
      ],
    );
  }
}
