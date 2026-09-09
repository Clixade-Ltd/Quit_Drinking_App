# Quit Drinking App 🍃

A Flutter-based mobile application designed to help users reduce or quit alcohol consumption through personalized tracking, daily check-ins, recovery tools, progress insights, and supportive resources.

The app focuses on creating a structured recovery journey by helping users understand their drinking habits, track progress, manage cravings, reflect through journaling, and celebrate milestones.

---

## ✨ Features

### 🎯 Personalized Onboarding

* Guided onboarding experience
* Collects information about the user's drinking habits and goals
* Personalized recovery journey based on user responses
* Supports multiple units including metric and imperial measurements
* Gender and profile information
* Persistent onboarding state

### 📊 Progress & Statistics

* Track drinking and recovery progress
* View personal statistics and trends
* Monitor milestones and achievements
* Track money and other potential benefits associated with reducing alcohol consumption

### 📝 Daily Check-ins

* Daily recovery check-ins
* Reflection and journaling
* Guided prompts
* Track cravings and daily experiences
* Store recovery-related information for each user

### 🧠 Recovery Tools

The app includes several tools designed to help users manage difficult moments:

* Breathing exercises
* Coping tips
* Ride the Wave craving-management technique
* Craving tracking
* Recovery Coach chatbot
* Daily reflection
* Journaling

### 🏆 Achievements & Milestones

* Achievement system
* Recovery milestones
* Milestone celebration screens
* Progress-based achievements

### 🤖 AI Recovery Coach

* AI-powered conversational recovery assistant
* Provides supportive guidance and information
* Helps users work through cravings and difficult situations

### 💧 Hydration Tracking

* Track daily water intake
* Dedicated hydration tracker
* Progress visualization
* Premium functionality integration

### 💎 Premium Features

* Premium plan screen
* PRO feature integration
* Premium functionality prepared for future monetization

### 🌍 Multilingual Support

The application supports a large number of languages using Flutter's localization system.

Localization is implemented using `.arb` files and generated localization classes.

Supported languages include:

* English
* Arabic
* Turkish
* Urdu
* Persian
* French
* German
* Spanish
* Portuguese
* Polish
* Russian
* Hindi
* Bengali
* Japanese
* Korean
* Chinese
* Indonesian
* Malay
* Thai
* Vietnamese
* Italian
* Dutch
* Greek
* Ukrainian
* Swedish
* Finnish
* Danish
* Norwegian
* Czech
* Slovak
* Hungarian
* Romanian
* Bulgarian
* Croatian
* Serbian
* Slovenian
* Lithuanian
* Latvian
* Estonian
* Georgian
* Armenian
* Kazakh
* Kyrgyz
* Azerbaijani
* Kannada
* Malayalam
* Marathi
* Tamil
* Telugu
* Gujarati
* Punjabi
* Nepali
* Sinhala
* Khmer
* Lao
* Mongolian
* Burmese
* Swahili
* Afrikaans
* Albanian
* Basque
* Catalan
* Galician
* Icelandic
* Hebrew
* Amharic
* Zulu
* and more.

---

## 🔥 Firebase Integration

The application uses Firebase for backend and application services.

### Firebase Services

* **Firebase Core** — Firebase initialization
* **Firebase Authentication** — User authentication
* **Cloud Firestore** — User and recovery data storage
* **Firebase Storage** — File/media storage
* **Firebase Analytics** — User interaction and event tracking
* **Firebase Cloud Messaging (FCM)** — Push notifications
* **Firebase Crashlytics** — Crash monitoring and reporting

### 📈 Firebase Analytics

Analytics events are centralized through an `AnalyticsService` to keep event names and parameters consistent throughout the application.

The service also supports automatic screen-view tracking through:

```dart
FirebaseAnalyticsObserver
```

### 🔔 Firebase Cloud Messaging

Firebase Cloud Messaging is integrated for push notifications.

The application:

* Generates an FCM device token
* Supports Firebase test notifications
* Receives notifications while the application is running in the background
* Launches the application when a notification is tapped

Notification-specific navigation and behavior can be extended according to individual notification requirements.

### 🐛 Firebase Crashlytics

Firebase Crashlytics is integrated to monitor application crashes and runtime issues.

Crashlytics is configured to capture Flutter framework errors using:

```
FlutterError.onError =
    FirebaseCrashlytics.instance.recordFlutterFatalError;
```

---

## 🤖 AI Backend

The application includes an AI-powered Recovery Coach backed by a Node.js server.

### Backend Technologies

* Node.js
* Express.js
* Google Gemini API
* dotenv

The backend exposes an API endpoint for AI-generated responses:

```text
POST /api/generate
```

Environment variables are used to keep API credentials outside the source code.

---

## 🛠️ Tech Stack

### Frontend

* Flutter
* Dart
* Material Design

### Backend

* Node.js
* Express.js
* Google Gemini API

### Database & Cloud

* Firebase Authentication
* Cloud Firestore
* Firebase Storage
* Firebase Cloud Messaging
* Firebase Analytics
* Firebase Crashlytics

### Development Tools

* Android Studio
* Visual Studio Code
* Git
* GitHub

---

## 📁 Project Structure

```text
lib/
├── constants/
│   └── api_constants.dart
│
├── l10n/
│   ├── app_en.arb
│   ├── app_*.arb
│   └── generated localization files
│
├── screens/
│   ├── analyzing_jorney/
│   ├── bottom_nav/
│   │   ├── badges/
│   │   ├── journal/
│   │   ├── profile/
│   │   └── stats/
│   ├── cravings/
│   ├── daily_check_in/
│   ├── details/
│   ├── milestones/
│   ├── onboardings/
│   ├── questions/
│   ├── settings/
│   └── splash/
│
├── services/
│   ├── achievement_service.dart
│   ├── analytics_service.dart
│   └── gemini_service.dart
│
├── firebase_options.dart
└── main.dart
```

---

## 🌐 Localization

Flutter's localization system is used to provide a multilingual experience.

Translation files are maintained using the ARB format:

```text
lib/l10n/app_<language_code>.arb
```

Localization configuration is defined in:

```text
l10n.yaml
```

Generated localization files are produced using Flutter's localization tooling.

To regenerate localization files:

```bash
flutter gen-l10n
```

---

## 🚀 Getting Started

### Prerequisites

Make sure you have the following installed:

* Flutter SDK
* Dart SDK
* Android Studio
* Android SDK
* Git

Check your Flutter installation with:

```bash
flutter doctor
```

---

### 1. Clone the Repository

```bash
git clone https://github.com/zainabk4/Quit_Drinking_App.git
```

Navigate into the project:

```bash
cd Quit_Drinking_App
```

---

### 2. Install Dependencies

```bash
flutter pub get
```

---

### 3. Configure Firebase

The project uses Firebase services and requires the appropriate Firebase configuration.

Firebase configuration files include:

```text
android/app/google-services.json
lib/firebase_options.dart
```

For a new Firebase project, configure Firebase for the required platforms using the Firebase Flutter setup process.

---

### 4. Configure AI Backend

The AI functionality requires the Node.js backend.

Create a `.env` file in the backend project and configure the required API credentials.

Example:

```env
GEMINI_API_KEY=your_api_key_here
```

Do not commit API keys or other secrets to GitHub.

---

### 5. Run the Application

Connect an Android device or start an emulator, then run:

```bash
flutter run
```

---

## 🔔 Testing Push Notifications

The application uses Firebase Cloud Messaging.

To test notifications:

1. Run the application on a physical Android device.
2. Obtain the device's FCM token.
3. Open Firebase Console.
4. Navigate to Firebase Cloud Messaging.
5. Create a test notification.
6. Select the test device using its FCM token.
7. Send the notification.

The application should receive the notification when running in the background.

---

## 📊 Testing Analytics

Firebase Analytics events can be tested using Firebase DebugView.

For Android development, enable Analytics debug mode with:

```bash
adb shell setprop debug.firebase.analytics.app com.example.new_quit_drinking_app
```

Then run the application and open:

**Firebase Console → Analytics → DebugView**

This allows analytics events to be monitored during development.

---

## 🐛 Crash Reporting

Crashlytics can be used to monitor crashes and errors from deployed application builds.

Crash reports can be viewed through:

**Firebase Console → Crashlytics**

During development, test crashes should only be generated intentionally in a controlled environment.

---

## 🔐 Security

The application uses Firebase and external APIs, so sensitive credentials should never be committed to the repository.

Do not commit:

* API keys
* Passwords
* Access tokens
* Private credentials
* Production secrets

Use environment variables and Firebase's recommended security configuration.

---

## 🧪 Development

Useful Flutter commands:

```bash
# Install dependencies
flutter pub get

# Run the application
flutter run

# Analyze the project
flutter analyze

# Run tests
flutter test

# Generate localization files
flutter gen-l10n

# Clean build files
flutter clean
```

---

## 📌 Current Status

The application currently includes:

* ✅ Flutter application architecture
* ✅ Personalized onboarding
* ✅ Multilingual localization
* ✅ Firebase integration
* ✅ Firebase Analytics
* ✅ Firebase Cloud Messaging
* ✅ Firebase Crashlytics integration
* ✅ Recovery tracking
* ✅ Daily check-ins
* ✅ Journaling
* ✅ Craving management tools
* ✅ Breathing exercises
* ✅ Coping tips
* ✅ Recovery Coach
* ✅ Achievements and milestones
* ✅ Statistics and progress tracking
* ✅ Hydration tracking
* ✅ Premium feature structure

Additional notification behaviors, navigation, and production-specific functionality are being developed incrementally.

---

## 📄 License

This project is currently a private development project.

---

## 👩‍💻 Author

**Zainab K.**

GitHub:

`https://github.com/zainabk4`

---

## 💚 About the Project

Quit Drinking App is built with the goal of providing users with a structured, supportive, and personalized digital recovery experience.

The application combines habit tracking, self-reflection, recovery tools, AI assistance, progress visualization, and personalized insights into a single mobile experience.
