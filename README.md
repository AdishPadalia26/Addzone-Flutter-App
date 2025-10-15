# 📱 Addzone – Flutter Business Listing App

**Addzone** is a Flutter-based cross-platform application that allows users to discover, create, and manage **local business listings**.  
It bridges the gap between small businesses and nearby customers by delivering an intuitive, real-time marketplace experience.

---

## 🧠 Overview

Addzone enables users to:
- 🏪 **Browse** businesses across multiple categories
- ➕ **Add or claim** their own business listing
- 📝 **Edit and manage** business profiles with images, details, and location data
- 🔎 **Search and filter** listings by name, type, or location
- ⭐️ **Mark favorites** and access saved listings offline

Built with **Flutter**, **Firebase**, and **Google Maps API**, the app supports both **Android** and **iOS** platforms.

---

## 🧩 Features

✅ **User Authentication** – Secure email/password login and registration  
✅ **Business Listings** – Add, edit, or delete business entries with photos, contact info, and descriptions  
✅ **Search & Filters** – Locate nearby businesses using keywords or category filters  
✅ **Map Integration** – Google Maps for visual location tracking  
✅ **Favorites** – Save preferred businesses for quick access  
✅ **Cloud Database** – Real-time sync with Firebase Firestore  
✅ **Responsive UI** – Optimized for Android and iOS  

---

## 🏗️ Tech Stack

| Component        | Technology                          |
|------------------|-------------------------------------|
| **Frontend**     | Flutter (Dart)                      |
| **Backend / DB** | Firebase Firestore, Firebase Auth   |
| **Storage**      | Firebase Cloud Storage              |
| **Location**     | Google Maps API                     |
| **State Mgmt**   | Provider / Riverpod                 |
| **Deployment**   | Android Studio, Xcode               |

---

## 📂 Folder Structure

```
lib/
├── main.dart
├── models/
│   └── business_model.dart
├── screens/
│   ├── home_screen.dart
│   ├── add_business_screen.dart
│   ├── business_detail_screen.dart
│   └── login_screen.dart
├── widgets/
│   ├── business_card.dart
│   └── search_bar.dart
└── services/
    ├── auth_service.dart
    ├── firestore_service.dart
    └── location_service.dart
```

---

## ⚙️ Setup & Installation

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/AdishPadalia26/Addzone-Flutter-App.git
cd Addzone-Flutter-App
```

### 2️⃣ Install Dependencies
```bash
flutter pub get
```

### 3️⃣ Configure Firebase
- Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/)
- Add your Android and iOS apps
- Download and place `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) as follows:
    - `android/app/google-services.json`
    - `ios/Runner/GoogleService-Info.plist`

### 4️⃣ Run the App
```bash
flutter run
```

---


## 🧭 Future Enhancements

- 🌐 Integration with Google My Business API
- 💬 In-app chat between business owners & users
- 📅 Appointment & booking system
- 🧾 Analytics dashboard for business insights
- 🔔 Push notifications for updates and offers

---

## Author

👤 **Adish Padalia**  
🌐 [LinkedIn](https://www.linkedin.com/in/adish-padalia/)  
💻 [GitHub](https://github.com/AdishPadalia26)  
📧 padaliaadish@gmail.com

## 📝 License

This project is open-sourced under the MIT License.

---

> “Empowering small businesses through digital presence — anywhere, anytime.”
