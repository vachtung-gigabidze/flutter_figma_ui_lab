import 'package:flutter/material.dart';
import 'package:flutter_figma_template/crm_dashboard/data/drawer_item.dart';
import 'package:flutter_figma_template/crm_dashboard/models/drawer_item.dart';
import 'package:flutter_figma_template/crm_dashboard/providers/navigation_provider.dart';
import 'package:provider/provider.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final safeArea = EdgeInsets.only(
      top: MediaQuery.of(context).viewPadding.top,
    );

    final provider = Provider.of<NavigationProvider>(context);
    final isCollapsed = provider.isCollapsed;

    return SizedBox(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.1 : null,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 24).add(safeArea),
                width: double.infinity,
                color: Colors.white12,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 24),
              buildList(items: itemsFirst, isCollapsed: isCollapsed),
              const SizedBox(height: 24),
              Divider(color: Colors.white70),
              const SizedBox(height: 24),
              // buildList(
              //   indexOffset: itemsFirst.length,
              //   items: itemsSecond,
              //   isCollapsed: isCollapsed,
              // ),
              Spacer(),
              buildAccessPro(context, isCollapsed),
              const SizedBox(height: 46),
              buildUserIcon(context, isCollapsed),
              const SizedBox(height: 12),
              buildCollapseIcon(context, isCollapsed),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
    int indexOffset = 0,
  }) => ListView.separated(
    padding: isCollapsed ? EdgeInsets.zero : padding,
    shrinkWrap: true,
    primary: false,
    itemCount: items.length,
    separatorBuilder: (context, index) => SizedBox(height: 16),
    itemBuilder: (context, index) {
      final item = items[index];

      return buildMenuItem(
        isCollapsed: isCollapsed,
        text: item.title,
        icon: item.icon,
        onClicked: () => selectItem(context, indexOffset + index),
      );
    },
  );

  void selectItem(BuildContext context, int index) {
    // navigateTo(page) => Navigator.of(
    //   context,
    // ).push(MaterialPageRoute(builder: (context) => page));

    Navigator.of(context).pop();

    // switch (index) {
    //   case 0:
    //     navigateTo(GetStartedPage());
    //     break;
    //   case 1:
    //     navigateTo(SamplesPage());
    //     break;
    //   case 2:
    //     navigateTo(TestingPage());
    //     break;
    //   case 3:
    //     navigateTo(PerformancePage());
    //     break;
    //   case 4:
    //     navigateTo(DeploymentPage());
    //     break;
    //   case 5:
    //     navigateTo(ResourcesPage());
    //     break;
    // }
  }

  Widget buildMenuItem({
    required bool isCollapsed,
    required String text,
    required Widget icon,
    VoidCallback? onClicked,
  }) {
    final color = Color(0xff9197B3);
    final leading = icon; //Icon(icon, color: color);
    final trailing = Icon(Icons.arrow_forward_ios, color: color, size: 16);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // color: Colors.transparent,

        //  Color(0xFF5932EA),
      ),
      child:
          isCollapsed
              ? ListTile(title: leading, onTap: onClicked)
              : ListTile(
                leading: leading,
                title: Text(text, style: TextStyle(color: color, fontSize: 14)),
                trailing: trailing,
                hoverColor: Color(0xFF5932EA),

                onTap: onClicked,
              ),
    );
  }

  Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
    final double size = 24;
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : EdgeInsets.only(right: 16);
    final width = isCollapsed ? double.infinity : size;

    return Container(
      alignment: alignment,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: SizedBox(
            width: width,
            height: size,
            child: Icon(icon, color: Color(0xff9197B3)),
          ),
          onTap: () {
            final provider = Provider.of<NavigationProvider>(
              context,
              listen: false,
            );

            provider.toggleIsCollapsed();
          },
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) =>
      isCollapsed
          ? Image.asset('assets/icons/setting.png', height: 37)
          : Row(
            children: [
              const SizedBox(width: 24),
              Image.asset('assets/icons/setting.png', height: 37),
              const SizedBox(width: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'v.01',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          );

  buildUserIcon(BuildContext context, bool isCollapsed) =>
      isCollapsed
          ? Image.asset('assets/icons/ellipse_8.png', height: 42)
          : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/icons/ellipse_8.png', height: 42),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Evano", style: TextStyle(fontSize: 14)),
                      Text("Project Manager", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
              Image.asset('assets/icons/arrow_down_ios.png', height: 24),
            ],
          );

  buildAccessPro(BuildContext context, bool isCollapsed) =>
      isCollapsed
          ? SizedBox()
          : Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [Color(0xffEAABF0), Color(0xff4623E9)],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: SizedBox(
                    width: 183,
                    child: Text(
                      "Upgrade to PRO to get access all Features!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 203,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),

                  child: Center(
                    child: Text(
                      "Get Pro Now!",
                      style: TextStyle(
                        color: Color(0xff4925E9),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
}
