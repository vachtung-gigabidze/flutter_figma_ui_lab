// ignore_for_file: public_member_api_docs, sort_constructors_first

enum StatusProduct { active, inactive }

class ProductItem {
  final String customerName;
  final String company;
  final String phoneNumber;
  final String email;
  final String country;
  StatusProduct status;
  ProductItem({
    required this.customerName,
    required this.company,
    required this.phoneNumber,
    required this.email,
    required this.country,
    required this.status,
  });
}
