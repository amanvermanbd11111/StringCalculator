int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimiter = ',|\n';
  String numStr = numbers;

  if (numbers.startsWith('//')) {
    final split = numbers.split('\n');
    delimiter = RegExp.escape(split[0].substring(2));
    numStr = split.sublist(1).join('\n');
  }

  final parts = numStr.split(RegExp(delimiter));
  final nums = parts.map(int.parse).toList();

  final negatives = nums.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception('negative numbers not allowed ${negatives.join(',')}');
  }

  return nums.reduce((a, b) => a + b);
}
