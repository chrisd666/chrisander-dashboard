class SaleInfo {
  final String product, date;
  final double price;
  final int quantity;

  SaleInfo({this.product, this.date, this.price, this.quantity});
}

List<SaleInfo> demoSaleInfo = [
  SaleInfo(product: "Jack Danny", price: 100, quantity: 2, date: "27-02-2021"),
  SaleInfo(
    product: "Kingfighter Strong",
    price: 50,
    quantity: 4,
    date: "27-02-2021",
  ),
  SaleInfo(
    product: "KoKa-Koliwada",
    price: 100,
    quantity: 1,
    date: "23-02-2021",
  ),
  SaleInfo(product: "Tuborgious", price: 45, quantity: 3, date: "21-02-2021"),
  SaleInfo(
      product: "Magic Monuments", price: 200, quantity: 1, date: "23-02-2021"),
  SaleInfo(
      product: "Bacarda Fizzer", price: 60, quantity: 1, date: "25-02-2021"),
  SaleInfo(
    product: "Old Monkey",
    price: 600,
    quantity: 1,
    date: "25-02-2021",
  ),
];
