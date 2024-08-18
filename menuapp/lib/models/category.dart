class Category {
  final String id;
  final String title;
  final String imageUrl;

  Category({required this.id, required this.title, required this.imageUrl});
}

class Categories {
  List<Category> _list = [
    Category(
        id: "c1", title: "Fast Food", imageUrl: "assets/images/fastfood.jpg"),
    Category(id: "c2", title: "Milliy Taom", imageUrl: "assets/images/osh.jpg"),
    Category(
        id: "c3", title: "Uygur Taom", imageUrl: "assets/images/manti.jpg"),
    Category(
        id: "c4", title: "Italya Taom", imageUrl: "assets/images/italian.jpg"),
    Category(
        id: "c5", title: "Fransiya Taom", imageUrl: "assets/images/france.jpg"),
    Category(id: "c6", title: "Arab Taom", imageUrl: "assets/images/arab.jpg"),
  ];

  List<Category> get list {
    return _list;
  }
}
