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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lastName'] = this.lastName;
    data['translitLastname'] = this.translitLastname;
    data['firstName'] = this.firstName;
    data['translitFirstName'] = this.translitFirstName;
    data['patronymic'] = this.patronymic;
    data['translitPatronymic'] = this.translitPatronymic;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['PDAgreement'] = this.pDAgreement;
    data['shouldSendNotifications'] = this.shouldSendNotifications;
    data['FBLink'] = this.fBLink;
    data['VKLink'] = this.vKLink;
    data['GoogleId'] = this.googleId;
    data['isInVolunteerCenter'] = this.isInVolunteerCenter;
    data['volunteerCenter'] = this.volunteerCenter;
    data['birthday'] = this.birthday;
    data['citizenshipCountryId'] = this.citizenshipCountryId;
    data['registrationAddrCityId'] = this.registrationAddrCityId;
    data['registrationAddrSettlementId'] = this.registrationAddrSettlementId;
    data['registrationAddrSubwayId'] = this.registrationAddrSubwayId;
    data['registrationAddrStreet'] = this.registrationAddrStreet;
    data['registrationAddrBuilding'] = this.registrationAddrBuilding;
    data['registrationAddrApt'] = this.registrationAddrApt;
    data['isSameAsRegistrationAddress'] = this.isSameAsRegistrationAddress;
    data['factAddrCityId'] = this.factAddrCityId;
    data['factAddrSettlementId'] = this.factAddrSettlementId;
    data['factAddrSubwayId'] = this.factAddrSubwayId;
    data['factAddrStreet'] = this.factAddrStreet;
    data['factAddrBuilding'] = this.factAddrBuilding;
    data['factAddrApt'] = this.factAddrApt;
    data['height'] = this.height;
    data['shoulderWidth'] = this.shoulderWidth;
    data['sleeveLength'] = this.sleeveLength;
    data['schrittlange'] = this.schrittlange;
    data['footSize'] = this.footSize;
    data['waistGirth'] = this.waistGirth;
    data['chest'] = this.chest;
    data['hip'] = this.hip;
    data['headСircumference'] = this.headCircumference;
    data['medicalRestrictionsDescription'] =
        this.medicalRestrictionsDescription;
    data['isMedicialRestrictions'] = this.isMedicialRestrictions;
    data['specialWorkingConditions'] = this.specialWorkingConditions;
    data['specialWorkingConditionsDescription'] =
        this.specialWorkingConditionsDescription;
    data['englishLevel'] = this.englishLevel;
    data['passport'] = this.passport;
    data['ITN'] = this.iTN;
    data['INILA'] = this.iNILA;
    data['volunteerBookNumber'] = this.volunteerBookNumber;
    data['educationLevel'] = this.educationLevel;
    data['haveVolunteerExperience'] = this.haveVolunteerExperience;
    data['haveTeamleadExperience'] = this.haveTeamleadExperience;
    data['userId'] = this.userId;
    data['isNeedLiveApartament'] = this.isNeedLiveApartament;
    data['photo'] = this.photo;
    data['clothesSize'] = this.clothesSize;
    data['languages'] = this.languages;
    data['medicalRestrictions'] = this.medicalRestrictions;
    data['passportFile'] = this.passportFile;
    data['passportFileSecond'] = this.passportFileSecond;
    data['ITNFile'] = this.iTNFile;
    data['INILAFile'] = this.iNILAFile;
    data['volunteerBookFile'] = this.volunteerBookFile;
    data['resumeFile'] = this.resumeFile;
    data['education'] = this.education;
    data['experience'] = this.experience;
    data['volunteerExperience'] = this.volunteerExperience;
    data['teamleadExperience'] = this.teamleadExperience;
    if (this.application != null) {
      data['application'] = this.application!.map((v) => v.toJson()).toList();
    }
    data['vaccination'] = this.vaccination;
    data['registrationAddrCity'] = this.registrationAddrCity;
    data['registrationAddrSettlement'] = this.registrationAddrSettlement;
    data['factAddrCity'] = this.factAddrCity;
    data['factAddrSettlement'] = this.factAddrSettlement;
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
      application.add(new Application.fromJson(v));
    }),
    vaccination: json['vaccination'],
    registrationAddrCity: json['registrationAddrCity'],
    registrationAddrSettlement: json['registrationAddrSettlement'],
    factAddrCity: json['factAddrCity'],
    factAddrSettlement: json['factAddrSettlement'],
  );
}

class Application {
  int id;
  int blockId;
  int managerId;
  String interviewDate;
  bool isAgreedWithRules;
  bool isLeader;
  bool isReserve;
  int badge;
  int employeeId;
  int interviewAppointmentCount;
  String rejectReasonText;
  String jobOfferAt;
  String lastMailingShiftsHash;
  Map<String, dynamic> event;
  Status status;
  Map<String, dynamic> fSOStatus;
  Map<String, dynamic> block;
  Map<String, dynamic> area;
  Map<String, dynamic> team;
  Role role;
  Map<String, dynamic> typeOfEmployee;
  Map<String, dynamic> interviewResult;
  List<dynamic> desiredFunction;
  List<dynamic> desiredPosition;
  List<dynamic> position;
  List<dynamic> function;
  List<dynamic> comments;
  String rejectReason;

  Application(
      {required this.id,
      required this.blockId,
      required this.managerId,
      required this.interviewDate,
      required this.isAgreedWithRules,
      required this.isLeader,
      required this.isReserve,
      required this.badge,
      required this.employeeId,
      required this.interviewAppointmentCount,
      required this.rejectReasonText,
      required this.jobOfferAt,
      required this.lastMailingShiftsHash,
      required this.event,
      required this.status,
      required this.fSOStatus,
      required this.block,
      required this.area,
      required this.team,
      required this.role,
      required this.typeOfEmployee,
      required this.interviewResult,
      required this.desiredFunction,
      required this.desiredPosition,
      required this.position,
      required this.function,
      required this.comments,
      required this.rejectReason});

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['blockId'] = this.blockId;
    data['managerId'] = this.managerId;
    data['interviewDate'] = this.interviewDate;
    data['isAgreedWithRules'] = this.isAgreedWithRules;
    data['isLeader'] = this.isLeader;
    data['isReserve'] = this.isReserve;
    data['badge'] = this.badge;
    data['employeeId'] = this.employeeId;
    data['interviewAppointmentCount'] = this.interviewAppointmentCount;
    data['rejectReasonText'] = this.rejectReasonText;
    data['jobOfferAt'] = this.jobOfferAt;
    data['lastMailingShiftsHash'] = this.lastMailingShiftsHash;
    data['event'] = this.event;
    if (this.status != null) {
      data['status'] = this.status.toJson();
    }
    data['FSOStatus'] = this.fSOStatus;
    data['block'] = this.block;
    data['area'] = this.area;
    data['team'] = this.team;
    if (this.role != null) {
      data['role'] = this.role.toJson();
    }
    data['typeOfEmployee'] = this.typeOfEmployee;
    data['interviewResult'] = this.interviewResult;
    data['desiredFunction'] = this.desiredFunction;
    data['desiredPosition'] = this.desiredPosition;
    data['position'] = this.position;
    data['function'] = this.function;
    data['comments'] = this.comments;
    data['rejectReason'] = this.rejectReason;
    return data;
  }
}

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return Application(
      id: json['id'],
      blockId: json['blockId'],
      managerId: json['managerId'],
      interviewDate: json['interviewDate'],
      isAgreedWithRules: json['isAgreedWithRules'],
      isLeader: json['isLeader'],
      isReserve: json['isReserve'],
      badge: json['badge'],
      employeeId: json['employeeId'],
      interviewAppointmentCount: json['interviewAppointmentCount'],
      rejectReasonText: json['rejectReasonText'],
      jobOfferAt: json['jobOfferAt'],
      lastMailingShiftsHash: json['lastMailingShiftsHash'],
      event: json['event'],
      status: Status.fromJson(json['status']),
      fSOStatus: json['FSOStatus'],
      block: json['block'],
      area: json['area'],
      team: json['team'],
      role: Role.fromJson(json['role']),
      typeOfEmployee: json['typeOfEmployee'],
      interviewResult: json['interviewResult'],
      desiredFunction: json['desiredFunction'],
      desiredPosition: json['desiredPosition'],
      position: json['position'],
      function: json['function'],
      comments: json['comments'],
      rejectReason: json['rejectReason']);
}

class Status {
  int id;
  String description;

  Status({required this.id, required this.description});

  factory Status.fromJson(Map<String, dynamic> json) =>
      _$StatusFromJson(json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    return data;
  }
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return Status(
      id : json['id'],
      description : json['description'],
  );
}

class Role {
  int id;
  String description;
  bool isTemporary;

  Role({required this.id, required this.description, required this.isTemporary});

  factory Role.fromJson(Map<String, dynamic> json) =>
      _$RoleFromJson(json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['isTemporary'] = this.isTemporary;
    return data;
  }
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return Role(
      id : json['id'],
      description : json['description'],
      isTemporary : json['isTemporary'],
  );
}
