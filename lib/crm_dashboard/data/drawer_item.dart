import 'package:flutter_figma_template/crm_dashboard/models/drawer_item.dart';
import 'package:flutter_svg/svg.dart';

final itemsFirst = [
  DrawerItem(
    title: 'Dashboard',
    icon: SvgPicture.asset('assets/icons/key_square.svg', height: 24),
  ),
  DrawerItem(
    title: 'Production',
    icon: SvgPicture.asset('assets/icons/3d_square.svg', height: 24),
  ),
  DrawerItem(
    title: 'Customers',
    icon: SvgPicture.asset('assets/icons/user_square.svg', height: 24),
  ),
  DrawerItem(
    title: 'Income',
    icon: SvgPicture.asset('assets/icons/wallet_money.svg', height: 24),
  ),
  DrawerItem(
    title: 'Promote',
    icon: SvgPicture.asset('assets/icons/discount_shape.svg', height: 24),
  ),
  DrawerItem(
    title: 'Help',
    icon: SvgPicture.asset('assets/icons/message_question.svg', height: 24),
  ),
];

// final itemsSecond = [
//   DrawerItem(title: 'Deployment', icon: Icons.cloud_upload),
//   DrawerItem(title: 'Resources', icon: Icons.extension),
// ];
