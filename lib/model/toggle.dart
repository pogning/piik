class TypeToggle {
  final String category;
  final bool active;

  TypeToggle(this.category, this.active);

  TypeToggle copyWith(
    bool? active,
  ) {
    return TypeToggle(
      category,
      active ?? this.active,
    );
  }
}

class PostToggle {
  final String post;
  final bool active;

  PostToggle(this.post, this.active);

  PostToggle copyWith(
    bool? active,
  ) {
    return PostToggle(
      post,
      active ?? this.active,
    );
  }
}
