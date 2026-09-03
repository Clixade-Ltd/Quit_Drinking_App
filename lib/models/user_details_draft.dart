class UserDetailsDraft {
  UserDetailsDraft._();

  static final UserDetailsDraft instance =
  UserDetailsDraft._();

  // ---- Details Screen ----
  String? name;
  int? age;
  String? sex;

  // Locally Stored  values.
  double? heightCm;
  double? weightKg;

  // Units currently selected in UI.
  String heightUnit = 'cm';
  String weightUnit = 'kg';

  // ---- Question 1: Goal ----
  String? goal;

  // ---- Question 2: Quit timing ----
  // String? quitTiming;
  // DateTime? customQuitDate;

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

  // void setQuitTiming(String value, {DateTime? date}) {
  //   quitTiming = value;
  //   // Only keep a custom date when "Choose a date" is the
  //   // active selection; other options clear it.
  //   customQuitDate = value == 'Choose a date' ? date : null;
  // }

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
      // 'quitTiming': quitTiming,
      // 'customQuitDate': customQuitDate?.toIso8601String(),
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
        // quitTiming != null ||
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

    // quitTiming = null;
    // customQuitDate = null;

    drinksPerWeek = 0;
    moneySpentPerWeek = 0;
    drinkingLevel = null;
    triggers = [];

    quitReasons = [];
  }
}