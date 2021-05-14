class CloudStorageInfo {
  final String title;
  final double amount, percentageChange;
  final bool isMoney;
  final List<Map<String, double>> graphData;

  CloudStorageInfo(
      {this.title,
      this.amount,
      this.percentageChange,
      this.isMoney = true,
      this.graphData});
}

List<CloudStorageInfo> demoMyFields = [
  CloudStorageInfo(
      title: "Total Sales",
      amount: 45000.00,
      percentageChange: 45,
      graphData: [
        {'x': 1, 'y': 1},
        {'x': 2, 'y': 3},
        {'x': 3, 'y': 0},
        {'x': 4, 'y': 9},
        {'x': 5, 'y': 2},
        {'x': 6, 'y': 6},
        {'x': 7, 'y': 1},
        {'x': 8, 'y': 9},
        {'x': 9, 'y': 4},
      ]),
  CloudStorageInfo(
      title: "Total Revenue",
      amount: 92000.00,
      percentageChange: 60,
      graphData: [
        {'x': 1, 'y': 6},
        {'x': 2, 'y': 1},
        {'x': 3, 'y': 9},
        {'x': 4, 'y': 4},
        {'x': 5, 'y': 3},
        {'x': 6, 'y': 2},
        {'x': 7, 'y': 5},
        {'x': 8, 'y': 9},
        {'x': 9, 'y': 3},
      ]),
];
