class PostData {
  String name;
  String title;
  bool qualified;
  String post;
  String category;
  String imageurl;
  int collected;

  PostData(
      {required this.name,
      required this.title,
      required this.qualified,
      required this.post,
      required this.category,
      required this.collected,
      required this.imageurl});
}

List<PostData> voteList = [
  PostData(
    name: "@handle.seoul",
    title: "서울에서 산을 볼 수 있는 카페 10곳",
    qualified: true,
    post: "서울에서 산을 볼 수 있는 카페 10곳...",
    collected: 32,
    category: "travel",
    imageurl: "assets/images/lens.png", // 프로필 사진 이미지 설정
  ),
  PostData(
    name: "@gwanghwa.mun",
    title: "삼겹살이 진짜 맛있는 나만의 맛집",
    collected: 42,
    qualified: false,
    post: "나의 또간집은 여기! 서울 동대문구에 위치한...",
    category: "travel",
    imageurl: "assets/images/lens.png",
  ),
  PostData(
    name: "@gang.name",
    title: "세 번째 더미 데이터",
    collected: 93,
    qualified: true,
    post: "세 번째 포스트 내용입니다.",
    category: "travel",
    imageurl: "assets/images/lens.png",
  ),
  PostData(
    name: "@ether.hi",
    title: "세 번째 더미 데이터",
    collected: 122,
    qualified: true,
    post: "세 번째 포스트 내용입니다.",
    category: "travel",
    imageurl: "assets/images/lens.png",
  ),
];
