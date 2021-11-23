class News {
  int? id;
  String? title;
  String? description;
  String? shortDescription;
  int? status;
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
    final Map<String, dynamic> data = Map<String, dynamic>();
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

class Description {
  List<Blocks>? blocks;
  Map<String, dynamic>? entityMap;

  Description({this.blocks, this.entityMap});

  Description.fromJson(Map<String, dynamic> json) {
    if (json['blocks'] != null) {
      blocks = <Blocks>[];
      json['blocks'].forEach((v) { blocks!.add(Blocks.fromJson(v)); });
    }
    entityMap = json['entityMap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (blocks != null) {
      data['blocks'] = blocks!.map((v) => v.toJson()).toList();
    }
    data['entityMap'] = entityMap;
    return data;
  }
}

class Blocks {
  String? key;
  String? text;
  String? type;
  int? depth;
  List<dynamic>? inlineStyleRanges;
  List<dynamic>? entityRanges;
  Map<String, dynamic>? data;

  Blocks(
      {this.key,
        this.text,
        this.type,
        this.depth,
        this.inlineStyleRanges,
        this.entityRanges,
        this.data});

  Blocks.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    text = json['text'];
    type = json['type'];
    depth = json['depth'];
    inlineStyleRanges = json['inlineStyleRanges'];
    entityRanges = json['entityRanges'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['text'] = this.text;
    data['type'] = this.type;
    data['depth'] = this.depth;
    data['inlineStyleRanges'] = this.inlineStyleRanges;
    data['entityRanges'] = this.entityRanges;
    data['data'] = this.data;
    return data;
  }
}