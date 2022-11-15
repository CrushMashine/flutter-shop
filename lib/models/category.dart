class Category {
  final String title;
  final String icon;
  Category({
    required this.title,
    required this.icon,
  });
}

List<Category> categories = [
  Category(
    icon: 'assets/icons/dress.svg',
    title: 'Dress',
  ),
  Category(
    icon: 'assets/icons/shirt.svg',
    title: 'Shirt',
  ),
  Category(
    icon: 'assets/icons/pants.svg',
    title: 'Pants',
  ),
  Category(
    icon: 'assets/icons/t_shirt.svg',
    title: 'Tshirt',
  ),
];
