import 'package:flutter/material.dart';
import 'package:flutter_figma_template/crm_dashboard/data/product_item.dart';
import 'package:flutter_figma_template/crm_dashboard/models/product_item.dart';
import 'package:flutter_figma_template/crm_dashboard/widgets/search_widget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.searchController});
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All Customers",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff000000),
                      ),
                    ),
                    Text(
                      "Active Members",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff16C098),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SearchWidget(
                      color: Color(0xffE7E7E7),
                      searchController: searchController,
                    ),
                    SortWidget(),
                  ],
                ),
              ],
            ),
            Table(
              border: TableBorder(
                horizontalInside: BorderSide(
                  color: Color.fromARGB(255, 150, 150, 150),
                ),
              ),
              // columnWidths: const <int, TableColumnWidth>{
              //   0: IntrinsicColumnWidth(),
              //   1: FlexColumnWidth(),
              //   2: FixedColumnWidth(64),
              // },
              textBaseline: TextBaseline.ideographic,
              children: [
                headerTableProduct(),
                ...mockProductItems.map((p) => rowProduct(p)),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Showing data 1 to 8 of  256K entries",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffB5B7C0),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(child: Icon(Icons.arrow_back_ios, size: 12)),
                      ButtonSelectedWidget(
                        child: Text("1", style: TextStyle(color: Colors.white)),
                      ),
                      ButtonWidget(child: Text("2")),
                      ButtonWidget(child: Text("3")),
                      ButtonWidget(child: Text("4")),
                      ButtonWidget(child: Text("...")),
                      ButtonWidget(child: Text("40")),
                      ButtonWidget(
                        child: Icon(Icons.arrow_forward_ios, size: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TableRow headerTableProduct() {
    return TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,

          child: SizedBox(
            height: 69,

            // width: 32,
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Customer Name",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xffB5B7C0),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child: Text(
                "Company",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffB5B7C0),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child: Text(
                "Phone Number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffB5B7C0),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffB5B7C0),
                  ),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Country",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffB5B7C0),
                  ),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child: Text(
                "Status",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffB5B7C0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow rowProduct(ProductItem item) {
    return TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 69,
            // width: 32,
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Jane Cooper",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child: Text(
                "Microsoft",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child: Text(
                "(225) 555-0118",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "jane@microsoft.com",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "United States",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 40,
            // width: 32,
            // color: Colors.red,
            child: Center(
              child:
                  item.status == StatusProduct.active
                      ? ButtonActiveWidget()
                      : ButtonInactiveWidget(),
            ),
          ),
        ),
      ],
    );
  }
}

class SortWidget extends StatelessWidget {
  const SortWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 154,
      decoration: BoxDecoration(
        color: Color(0xffF9FBFF),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Short by:",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff7E7E7E),
              ),
            ),
            Text(
              "Newest",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xff3D3C42),
              ),
            ),
            Icon(Icons.keyboard_arrow_down, size: 18),
          ],
        ),
      ),
    );
  }
}

class ButtonActiveWidget extends StatelessWidget {
  const ButtonActiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      width: 80,
      decoration: BoxDecoration(
        color: Color(0x2216C098),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xff00B087)),
      ),

      child: Center(
        child: Text(
          "Active",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff00B087),
          ),
        ),
      ),
    );
  }
}

class ButtonInactiveWidget extends StatelessWidget {
  const ButtonInactiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      width: 80,
      decoration: BoxDecoration(
        color: Color(0xffffc5c5),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xffdf0404)),
      ),

      child: Center(
        child: Text(
          "Inactive",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xffdf0404),
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(5),
      ),

      child: Center(child: child),
    );
  }
}

class ButtonSelectedWidget extends StatelessWidget {
  const ButtonSelectedWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Color(0xff5932EA),
        borderRadius: BorderRadius.circular(5),
      ),

      child: Center(child: child),
    );
  }
}
