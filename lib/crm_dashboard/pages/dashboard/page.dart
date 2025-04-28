import 'package:flutter/material.dart';
import 'package:flutter_figma_template/crm_dashboard/providers/navigation_provider.dart';
import 'package:flutter_figma_template/crm_dashboard/widgets/earning_widget.dart';
import 'package:flutter_figma_template/crm_dashboard/widgets/navigation_drawer_widget.dart';
import 'package:flutter_figma_template/crm_dashboard/widgets/product_widget.dart';
import 'package:flutter_figma_template/crm_dashboard/widgets/search_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  static final String title = 'Navigation Drawer';
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Dashboard",
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Color(0xff5932EA),
            surface: Color(0x209197B3),
          ),
          textTheme: GoogleFonts.poppinsTextTheme(textTheme),
        ),
        home: HomeApp(),
      ),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavigationDrawerWidget(),

      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hello Evano 👋,",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SearchWidget(
              color: Color(0xffFFFFFF),
              searchController: searchController,
            ),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.apps),
          //Image.asset('assets/icons/setting.png', height: 32),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
      ),
      body: ColoredBox(
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                EarningWidget(),
                SizedBox(height: 40),
                ProductWidget(searchController: searchController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
