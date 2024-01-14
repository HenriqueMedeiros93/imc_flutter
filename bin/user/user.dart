class User {
  final String name;
  final double height;
  final double weight;

  const User({required this.name, required this.height,required this.weight});

  double calculateIMC() {
    return weight / (height * height);
  }
}
