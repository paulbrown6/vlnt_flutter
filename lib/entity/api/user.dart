import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {
  int? id;
  String? lastName;
  String? translitLastname;
  String? firstName;
  String? translitFirstName;
  String? patronymic;
  String? translitPatronymic;
  String? email;
  String? phoneNumber;
  bool? pDAgreement;
  bool? shouldSendNotifications;
  String? fBLink;
  String? vKLink;
  String? googleId;
  bool? isInVolunteerCenter;
  String? volunteerCenter;
  String? birthday;
  int? citizenshipCountryId;
  int? registrationAddrCityId;
  int? registrationAddrSettlementId;
  int? registrationAddrSubwayId;
  String? registrationAddrStreet;
  String? registrationAddrBuilding;
  String? registrationAddrApt;
  bool? isSameAsRegistrationAddress;
  int? factAddrCityId;
  int? factAddrSettlementId;
  int? factAddrSubwayId;
  String? factAddrStreet;
  String? factAddrBuilding;
  String? factAddrApt;
  int? height;
  int? shoulderWidth;
  int? sleeveLength;
  int? schrittlange;
  int? footSize;
  int? waistGirth;
  int? chest;
  int? hip;
  int? headCircumference;
  String? medicalRestrictionsDescription;
  bool? isMedicialRestrictions;
  String? specialWorkingConditions;
  String? specialWorkingConditionsDescription;
  int? englishLevel;
  String? passport;
  String? iTN;
  String? iNILA;
  String? volunteerBookNumber;
  String? educationLevel;
  bool? haveVolunteerExperience;
  bool? haveTeamleadExperience;
  int? userId;
  bool? isNeedLiveApartament;
  Map<String, dynamic>? photo;
  Map<String, dynamic>? clothesSize;
  List<dynamic>? languages;
  List<dynamic>? medicalRestrictions;
  Map<String, dynamic>? passportFile;
  Map<String, dynamic>? passportFileSecond;
  Map<String, dynamic>? iTNFile;
  Map<String, dynamic>? iNILAFile;
  Map<String, dynamic>? volunteerBookFile;
  Map<String, dynamic>? resumeFile;
  List<dynamic>? education;
  List<dynamic>? experience;
  List<dynamic>? volunteerExperience;
  List<dynamic>? teamleadExperience;
  List<Application>? application;
  List<dynamic>? vaccination;
  Map<String, dynamic>? registrationAddrCity;
  Map<String, dynamic>? registrationAddrSettlement;
  Map<String, dynamic>? factAddrCity;
  Map<String, dynamic>? factAddrSettlement;

  User(
      {this.id,
        this.lastName,
        this.translitLastname,
        this.firstName,
        this.translitFirstName,
        this.patronymic,
        this.translitPatronymic,
        this.email,
        this.phoneNumber,
        this.pDAgreement,
        this.shouldSendNotifications,
        this.fBLink,
        this.vKLink,
        this.googleId,
        this.isInVolunteerCenter,
        this.volunteerCenter,
        this.birthday,
        this.citizenshipCountryId,
        this.registrationAddrCityId,
        this.registrationAddrSettlementId,
        this.registrationAddrSubwayId,
        this.registrationAddrStreet,
        this.registrationAddrBuilding,
        this.registrationAddrApt,
        this.isSameAsRegistrationAddress,
        this.factAddrCityId,
        this.factAddrSettlementId,
        this.factAddrSubwayId,
        this.factAddrStreet,
        this.factAddrBuilding,
        this.factAddrApt,
        this.height,
        this.shoulderWidth,
        this.sleeveLength,
        this.schrittlange,
        this.footSize,
        this.waistGirth,
        this.chest,
        this.hip,
        this.headCircumference,
        this.medicalRestrictionsDescription,
        this.isMedicialRestrictions,
        this.specialWorkingConditions,
        this.specialWorkingConditionsDescription,
        this.englishLevel,
        this.passport,
        this.iTN,
        this.iNILA,
        this.volunteerBookNumber,
        this.educationLevel,
        this.haveVolunteerExperience,
        this.haveTeamleadExperience,
        this.userId,
        this.isNeedLiveApartament,
        this.photo,
        this.clothesSize,
        this.languages,
        this.medicalRestrictions,
        this.passportFile,
        this.passportFileSecond,
        this.iTNFile,
        this.iNILAFile,
        this.volunteerBookFile,
        this.resumeFile,
        this.education,
        this.experience,
        this.volunteerExperience,
        this.teamleadExperience,
        this.application,
        this.vaccination,
        this.registrationAddrCity,
        this.registrationAddrSettlement,
        this.factAddrCity,
        this.factAddrSettlement});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['lastName'] = lastName;
    data['translitLastname'] = translitLastname;
    data['firstName'] = firstName;
    data['translitFirstName'] = translitFirstName;
    data['patronymic'] = patronymic;
    data['translitPatronymic'] = translitPatronymic;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['PDAgreement'] = pDAgreement;
    data['shouldSendNotifications'] = shouldSendNotifications;
    data['FBLink'] = fBLink;
    data['VKLink'] = vKLink;
    data['GoogleId'] = googleId;
    data['isInVolunteerCenter'] = isInVolunteerCenter;
    data['volunteerCenter'] = volunteerCenter;
    data['birthday'] = birthday;
    data['citizenshipCountryId'] = citizenshipCountryId;
    data['registrationAddrCityId'] = registrationAddrCityId;
    data['registrationAddrSettlementId'] = registrationAddrSettlementId;
    data['registrationAddrSubwayId'] = registrationAddrSubwayId;
    data['registrationAddrStreet'] = registrationAddrStreet;
    data['registrationAddrBuilding'] = registrationAddrBuilding;
    data['registrationAddrApt'] = registrationAddrApt;
    data['isSameAsRegistrationAddress'] = isSameAsRegistrationAddress;
    data['factAddrCityId'] = factAddrCityId;
    data['factAddrSettlementId'] = factAddrSettlementId;
    data['factAddrSubwayId'] = factAddrSubwayId;
    data['factAddrStreet'] = factAddrStreet;
    data['factAddrBuilding'] = factAddrBuilding;
    data['factAddrApt'] = factAddrApt;
    data['height'] = height;
    data['shoulderWidth'] = shoulderWidth;
    data['sleeveLength'] = sleeveLength;
    data['schrittlange'] = schrittlange;
    data['footSize'] = footSize;
    data['waistGirth'] = waistGirth;
    data['chest'] = chest;
    data['hip'] = hip;
    data['headСircumference'] = headCircumference;
    data['medicalRestrictionsDescription'] =
        medicalRestrictionsDescription;
    data['isMedicialRestrictions'] = isMedicialRestrictions;
    data['specialWorkingConditions'] = specialWorkingConditions;
    data['specialWorkingConditionsDescription'] =
        specialWorkingConditionsDescription;
    data['englishLevel'] = englishLevel;
    data['passport'] = passport;
    data['ITN'] = iTN;
    data['INILA'] = iNILA;
    data['volunteerBookNumber'] = volunteerBookNumber;
    data['educationLevel'] = educationLevel;
    data['haveVolunteerExperience'] = haveVolunteerExperience;
    data['haveTeamleadExperience'] = haveTeamleadExperience;
    data['userId'] = userId;
    data['isNeedLiveApartament'] = isNeedLiveApartament;
    data['photo'] = photo;
    data['clothesSize'] = clothesSize;
    data['languages'] = languages;
    data['medicalRestrictions'] = medicalRestrictions;
    data['passportFile'] = passportFile;
    data['passportFileSecond'] = passportFileSecond;
    data['ITNFile'] = iTNFile;
    data['INILAFile'] = iNILAFile;
    data['volunteerBookFile'] = volunteerBookFile;
    data['resumeFile'] = resumeFile;
    data['education'] = education;
    data['experience'] = experience;
    data['volunteerExperience'] = volunteerExperience;
    data['teamleadExperience'] = teamleadExperience;
    if (application != null) {
      data['application'] = application!.map((v) => v.toJson()).toList();
    }
    data['vaccination'] = vaccination;
    data['registrationAddrCity'] = registrationAddrCity;
    data['registrationAddrSettlement'] = registrationAddrSettlement;
    data['factAddrCity'] = factAddrCity;
    data['factAddrSettlement'] = factAddrSettlement;
    return data;
  }


}

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'],
    lastName: json['lastName'],
    translitLastname: json['translitLastname'],
    firstName: json['firstName'],
    translitFirstName: json['translitFirstName'],
    patronymic: json['patronymic'],
    translitPatronymic: json['translitPatronymic'],
    email: json['email'],
    phoneNumber: json['phoneNumber'],
    pDAgreement: json['PDAgreement'],
    shouldSendNotifications: json['shouldSendNotifications'],
    fBLink: json['FBLink'],
    vKLink: json['VKLink'],
    googleId: json['GoogleId'],
    isInVolunteerCenter: json['isInVolunteerCenter'],
    volunteerCenter: json['volunteerCenter'],
    birthday: json['birthday'],
    citizenshipCountryId: json['citizenshipCountryId'],
    registrationAddrCityId: json['registrationAddrCityId'],
    registrationAddrSettlementId: json['registrationAddrSettlementId'],
    registrationAddrSubwayId: json['registrationAddrSubwayId'],
    registrationAddrStreet: json['registrationAddrStreet'],
    registrationAddrBuilding: json['registrationAddrBuilding'],
    registrationAddrApt: json['registrationAddrApt'],
    isSameAsRegistrationAddress: json['isSameAsRegistrationAddress'],
    factAddrCityId: json['factAddrCityId'],
    factAddrSettlementId: json['factAddrSettlementId'],
    factAddrSubwayId: json['factAddrSubwayId'],
    factAddrStreet: json['factAddrStreet'],
    factAddrBuilding: json['factAddrBuilding'],
    factAddrApt: json['factAddrApt'],
    height: json['height'],
    shoulderWidth: json['shoulderWidth'],
    sleeveLength: json['sleeveLength'],
    schrittlange: json['schrittlange'],
    footSize: json['footSize'],
    waistGirth: json['waistGirth'],
    chest: json['chest'],
    hip: json['hip'],
    headCircumference: json['headСircumference'],
    medicalRestrictionsDescription: json['medicalRestrictionsDescription'],
    isMedicialRestrictions: json['isMedicialRestrictions'],
    specialWorkingConditions: json['specialWorkingConditions'],
    specialWorkingConditionsDescription:
        json['specialWorkingConditionsDescription'],
    englishLevel: json['englishLevel'],
    passport: json['passport'],
    iTN: json['ITN'],
    iNILA: json['INILA'],
    volunteerBookNumber: json['volunteerBookNumber'],
    educationLevel: json['educationLevel'],
    haveVolunteerExperience: json['haveVolunteerExperience'],
    haveTeamleadExperience: json['haveTeamleadExperience'],
    userId: json['userId'],
    isNeedLiveApartament: json['isNeedLiveApartament'],
    photo: json['photo'],
    clothesSize: json['clothesSize'],
    languages: json['languages'],
    medicalRestrictions: json['medicalRestrictions'],
    passportFile: json['passportFile'],
    passportFileSecond: json['passportFileSecond'],
    iTNFile: json['ITNFile'],
    iNILAFile: json['INILAFile'],
    volunteerBookFile: json['volunteerBookFile'],
    resumeFile: json['resumeFile'],
    education: json['education'],
    experience: json['experience'],
    volunteerExperience: json['volunteerExperience'],
    teamleadExperience: json['teamleadExperience'],
    application: json['application'].forEach((v) {
      var application = [];
      application.add(Application.fromJson(v));
    }),
    vaccination: json['vaccination'],
    registrationAddrCity: json['registrationAddrCity'],
    registrationAddrSettlement: json['registrationAddrSettlement'],
    factAddrCity: json['factAddrCity'],
    factAddrSettlement: json['factAddrSettlement'],
  );
}

class Application {
  int? id;
  int? blockId;
  int? managerId;
  String? interviewDate;
  bool? isAgreedWithRules;
  bool? isLeader;
  bool? isReserve;
  String? badge;
  int? employeeId;
  int? interviewAppointmentCount;
  String? rejectReasonText;
  String? jobOfferAt;
  String? lastMailingShiftsHash;
  String? event;
  Status? status;
  String? fSOStatus;
  Block? block;
  Areas? area;
  Teams? team;
  Role? role;
  String? typeOfEmployee;
  InterviewResult? interviewResult;
  List<DesiredFunction>? desiredFunction;
  List<dynamic>? desiredPosition;
  String? position;
  String? function;
  List<dynamic>? comments;
  String? rejectReason;

  Application(
      {this.id,
        this.blockId,
        this.managerId,
        this.interviewDate,
        this.isAgreedWithRules,
        this.isLeader,
        this.isReserve,
        this.badge,
        this.employeeId,
        this.interviewAppointmentCount,
        this.rejectReasonText,
        this.jobOfferAt,
        this.lastMailingShiftsHash,
        this.event,
        this.status,
        this.fSOStatus,
        this.block,
        this.area,
        this.team,
        this.role,
        this.typeOfEmployee,
        this.interviewResult,
        this.desiredFunction,
        this.desiredPosition,
        this.position,
        this.function,
        this.comments,
        this.rejectReason});

  Application.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    blockId = json['blockId'];
    managerId = json['managerId'];
    interviewDate = json['interviewDate'];
    isAgreedWithRules = json['isAgreedWithRules'];
    isLeader = json['isLeader'];
    isReserve = json['isReserve'];
    badge = json['badge'];
    employeeId = json['employeeId'];
    interviewAppointmentCount = json['interviewAppointmentCount'];
    rejectReasonText = json['rejectReasonText'];
    jobOfferAt = json['jobOfferAt'];
    lastMailingShiftsHash = json['lastMailingShiftsHash'];
    event = json['event'];
    status =
    json['status'] != null ? Status.fromJson(json['status']) : null;
    fSOStatus = json['FSOStatus'];
    block = json['block'] != null ? Block.fromJson(json['block']) : null;
    area = json['area'] != null ? Areas.fromJson(json['area']) : null;
    team = json['team'] != null ? Teams.fromJson(json['team']) : null;
    role = json['role'] != null ? Role.fromJson(json['role']) : null;
    typeOfEmployee = json['typeOfEmployee'];
    interviewResult = json['interviewResult'] != null
        ? InterviewResult.fromJson(json['interviewResult'])
        : null;
    if (json['desiredFunction'] != null) {
      desiredFunction = <DesiredFunction>[];
      json['desiredFunction'].forEach((v) {
        desiredFunction!.add(DesiredFunction.fromJson(v));
      });
    }
    if (json['desiredPosition'] != null) {
      desiredPosition = <dynamic>[];
      json['desiredPosition'].forEach((v) {
        // desiredPosition.add(v);
      });
    }
    position = json['position'];
    function = json['function'];
    if (json['comments'] != null) {
      comments = <dynamic>[];
      json['comments'].forEach((v) {
        // comments.add(v.fromJson());
      });
    }
    rejectReason = json['rejectReason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['blockId'] = blockId;
    data['managerId'] = managerId;
    data['interviewDate'] = interviewDate;
    data['isAgreedWithRules'] = isAgreedWithRules;
    data['isLeader'] = isLeader;
    data['isReserve'] = isReserve;
    data['badge'] = badge;
    data['employeeId'] = employeeId;
    data['interviewAppointmentCount'] = interviewAppointmentCount;
    data['rejectReasonText'] = rejectReasonText;
    data['jobOfferAt'] = jobOfferAt;
    data['lastMailingShiftsHash'] = lastMailingShiftsHash;
    data['event'] = event;
    if (status != null) {
      data['status'] = status!.toJson();
    }
    data['FSOStatus'] = fSOStatus;
    if (block != null) {
      data['block'] = block!.toJson();
    }
    if (area != null) {
      data['area'] = area!.toJson();
    }
    if (team != null) {
      data['team'] = team!.toJson();
    }
    if (role != null) {
      data['role'] = role!.toJson();
    }
    data['typeOfEmployee'] = typeOfEmployee;
    if (interviewResult != null) {
      data['interviewResult'] = interviewResult!.toJson();
    }
    if (desiredFunction != null) {
      data['desiredFunction'] =
          desiredFunction!.map((v) => v.toJson()).toList();
    }
    if (desiredPosition != null) {
      data['desiredPosition'] =
          desiredPosition!.map((v) => v.toJson()).toList();
    }
    data['position'] = position;
    data['function'] = function;
    if (comments != null) {
      data['comments'] = comments!.map((v) => v.toJson()).toList();
    }
    data['rejectReason'] = rejectReason;
    return data;
  }
}

class Status {
  int? id;
  String? description;

  Status({this.id, this.description});

  Status.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['description'] = description;
    return data;
  }
}

class Block {
  int? id;
  String? description;
  List<Areas>? areas;

  Block({this.id, this.description, this.areas});

  Block.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    if (json['areas'] != null) {
      areas = <Areas>[];
      json['areas'].forEach((v) {
        areas!.add(Areas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['description'] = description;
    if (areas != null) {
      data['areas'] = areas!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Areas {
  int? id;
  String? description;
  int? blockId;
  List<Teams>? teams;

  Areas({this.id, this.description, this.blockId, this.teams});

  Areas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    blockId = json['blockId'];
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(Teams.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['description'] = description;
    data['blockId'] = blockId;
    if (teams != null) {
      data['teams'] = teams!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Teams {
  int? id;
  String? description;
  int? areaId;

  Teams({this.id, this.description, this.areaId});

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    areaId = json['areaId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['description'] = description;
    data['areaId'] = areaId;
    return data;
  }
}

class Role {
  int? id;
  String? description;
  bool? isTemporary;

  Role({this.id, this.description, this.isTemporary});

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    isTemporary = json['isTemporary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['description'] = description;
    data['isTemporary'] = isTemporary;
    return data;
  }
}

class InterviewResult {
  int? id;
  String? date;
  String? time;
  int? motivation;
  int? responsibility;
  int? stressTolerance;
  int? teamwork;
  int? communicate;
  int? leadership;
  String? comment;
  String? absence;
  String? createdAt;
  List<dynamic>? distribution;
  EnglishLevel? englishLevel;

  InterviewResult(
      {this.id,
        this.date,
        this.time,
        this.motivation,
        this.responsibility,
        this.stressTolerance,
        this.teamwork,
        this.communicate,
        this.leadership,
        this.comment,
        this.absence,
        this.createdAt,
        this.distribution,
        this.englishLevel});

  InterviewResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    time = json['time'];
    motivation = json['motivation'];
    responsibility = json['responsibility'];
    stressTolerance = json['stressTolerance'];
    teamwork = json['teamwork'];
    communicate = json['communicate'];
    leadership = json['leadership'];
    comment = json['comment'];
    absence = json['absence'];
    createdAt = json['createdAt'];
    if (json['distribution'] != null) {
      distribution = <dynamic>[];
      json['distribution'].forEach((v) {
        // distribution.add(fromJson(v));
      });
    }
    englishLevel = json['englishLevel'] != null
        ? EnglishLevel.fromJson(json['englishLevel'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['time'] = time;
    data['motivation'] = motivation;
    data['responsibility'] = responsibility;
    data['stressTolerance'] = stressTolerance;
    data['teamwork'] = teamwork;
    data['communicate'] = communicate;
    data['leadership'] = leadership;
    data['comment'] = comment;
    data['absence'] = absence;
    data['createdAt'] = createdAt;
    if (distribution != null) {
      data['distribution'] = distribution!.map((v) => v.toJson()).toList();
    }
    if (englishLevel != null) {
      data['englishLevel'] = englishLevel!.toJson();
    }
    return data;
  }
}

class EnglishLevel {
  int? id;
  String? value;

  EnglishLevel({this.id, this.value});

  EnglishLevel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['value'] = value;
    return data;
  }
}

class DesiredFunction {
  int? id;
  int? applicationId;
  int? functionId;
  int? order;
  EnglishLevel? function;

  DesiredFunction(
      {this.id,
        this.applicationId,
        this.functionId,
        this.order,
        this.function});

  DesiredFunction.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    applicationId = json['applicationId'];
    functionId = json['functionId'];
    order = json['order'];
    function = json['function'] != null
        ? EnglishLevel.fromJson(json['function'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['applicationId'] = applicationId;
    data['functionId'] = functionId;
    data['order'] = order;
    if (function != null) {
      data['function'] = function!.toJson();
    }
    return data;
  }
}
