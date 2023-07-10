class ExploreModel {
  ExploreModel({
    this.sourceName,
  });
  String? sourceName;

  ExploreModel.fromJson(Map<String, dynamic> json) {
    sourceName = json['name'];
  }
}
