class QuestionModel {
  bool? success;
  String? message;
  String? resp;
  List<Question>? question;

  QuestionModel({this.success, this.message, this.resp, this.question});

  QuestionModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    resp = json['resp'];
    if (json['Question'] != null) {
      question = <Question>[];
      json['Question'].forEach((v) {
        question!.add(new Question.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['resp'] = this.resp;
    if (this.question != null) {
      data['Question'] = this.question!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Question {
  String? type;
  List<Data>? data;

  Question({this.type, this.data});

  Question.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? answerId;
  String? title;
  List<Answers>? answers;

  Data({this.answerId, this.title, this.answers});

  Data.fromJson(Map<String, dynamic> json) {
    answerId = json['answerId'];
    title = json['title'];
    if (json['answers'] != null) {
      answers = <Answers>[];
      json['answers'].forEach((v) {
        answers!.add(new Answers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['answerId'] = this.answerId;
    data['title'] = this.title;
    if (this.answers != null) {
      data['answers'] = this.answers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Answers {
  int? id;
  String? answer;

  Answers({this.id, this.answer});

  Answers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['answer'] = this.answer;
    return data;
  }
}
