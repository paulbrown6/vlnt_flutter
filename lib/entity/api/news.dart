class News {
  int? id;
  String? title;
  String? description;
  String? shortDescription;
  String? status;
  String? createdAt;
  String? updatedAt;
  int? teamId;
  int? areaId;
  int? blockId;
  String? lang;

  News(
      {this.id,
        this.title,
        this.description,
        this.shortDescription,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.teamId,
        this.areaId,
        this.blockId,
        this.lang});

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    teamId = json['teamId'];
    areaId = json['areaId'];
    blockId = json['blockId'];
    lang = json['lang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['shortDescription'] = this.shortDescription;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['teamId'] = this.teamId;
    data['areaId'] = this.areaId;
    data['blockId'] = this.blockId;
    data['lang'] = this.lang;
    return data;
  }
}