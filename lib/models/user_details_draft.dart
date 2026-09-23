class UserDetailsDraft {
  UserDetailsDraft._();

  static final UserDetailsDraft instance = UserDetailsDraft._();

  // ---- Details Screen ----
  String? name;
  int? age;
  String? sex;

  // Locally Stored values.
  double? heightCm;
  double? weightKg;

  // Units currently selected in UI.
  String heightUnit = 'cm';
  String weightUnit = 'kg';

  // ---- Question 1: Goal ----
  String? goal;

  // ---- Start Date ----
  DateTime? startDate;

  // ---- Question 3: Routine ----
  int drinksPerWeek = 0;
  int moneySpentPerWeek = 0;
  String? drinkingLevel;
  List<String> triggers = [];

  // ---- Question 4: Reasons to quit ----
  List<String> quitReasons = [];

  void set({
    required String name,
    required int age,
    required String sex,
    required double heightCm,
    required double weightKg,
    required String heightUnit,
    required String weightUnit,
  }) {
    this.name = name;
    this.age = age;
    this.sex = sex;
    this.heightCm = heightCm;
    this.weightKg = weightKg;
    this.heightUnit = heightUnit;
    this.weightUnit = weightUnit;
  }

  void setGoal(String value) {
    goal = value;
  }

  // ---- Start Date ----

  void setStartDate(DateTime value) {
    startDate = DateTime(
      value.year,
      value.month,
      value.day,
    );
  }

  void setDrinksPerWeek(int value) {
    drinksPerWeek = value;
  }

  void setMoneySpentPerWeek(int value) {
    moneySpentPerWeek = value;
  }

  void setDrinkingLevel(String value) {
    drinkingLevel = value;
  }

  void toggleTrigger(String trigger) {
    if (triggers.contains(trigger)) {
      triggers.remove(trigger);
    } else {
      triggers.add(trigger);
    }
  }

  void toggleReason(String reason) {
    if (quitReasons.contains(reason)) {
      quitReasons.remove(reason);
    } else {
      quitReasons.add(reason);
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'sex': sex,
      'heightCm': heightCm,
      'weightKg': weightKg,
      'heightUnit': heightUnit,
      'weightUnit': weightUnit,
      'goal': goal,

      // Start Date
      'startDate': startDate?.toIso8601String(),

      'drinksPerWeek': drinksPerWeek,
      'moneySpentPerWeek': moneySpentPerWeek,
      'drinkingLevel': drinkingLevel,
      'triggers': triggers,
      'quitReasons': quitReasons,
    };
  }

  bool get hasData {
    return name != null ||
        age != null ||
        sex != null ||
        heightCm != null ||
        weightKg != null ||
        goal != null ||
        startDate != null ||
        drinkingLevel != null ||
        drinksPerWeek != 0 ||
        moneySpentPerWeek != 0 ||
        triggers.isNotEmpty ||
        quitReasons.isNotEmpty;
  }

  void clear() {
    name = null;
    age = null;
    sex = null;

    heightCm = null;
    weightKg = null;

    heightUnit = 'cm';
    weightUnit = 'kg';

    goal = null;

    startDate = null;

    drinksPerWeek = 0;
    moneySpentPerWeek = 0;
    drinkingLevel = null;

    triggers = [];
    quitReasons = [];
  }
}