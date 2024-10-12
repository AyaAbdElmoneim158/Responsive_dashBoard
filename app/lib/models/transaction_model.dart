class TransactionModel {
  final String title;
  final String date;
  final String price;
  final bool withdrawal;

  TransactionModel({
    required this.title,
    required this.date,
    required this.price,
    required this.withdrawal,
  });
}
