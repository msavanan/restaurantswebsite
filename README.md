# restaurantswebsite

A new Flutter application for a restaurant.

## Getting Started

To run the Flutter Web App there are no special instruction. If in case Flutter web is not configure please following the commands in the andriod terminal as below:

```bash
$ flutter channnel master
$ flutter upgrade
$ flutter config --enable-web

To run the App
```bash
$ flutter run -d chrome
```

While you register your app, the Add Firebase SDK step gives you some code you need to paste into the web/index.html file of your Flutter app. When complete, it should look similar to this:

web/index.html

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>friendlyeats</title>

  <!-- The core Firebase JS SDK is always required and must be listed first -->
  <script src="https://www.gstatic.com/firebasejs/7.5.1/firebase-app.js"></script>

  <!-- TODO: Add SDKs for Firebase products that you want to use
      https://firebase.google.com/docs/web/setup#available-libraries -->

  <script>
    // Your web app's Firebase configuration
    var firebaseConfig = {
      apiKey: "YoUr_RaNdOm_API_kEy",
      authDomain: "your-project-name.firebaseapp.com",
      databaseURL: "https://your-project-name.firebaseio.com",
      projectId: "your-project-name",
      storageBucket: "your-project-name.appspot.com",
      messagingSenderId: "012345678901",
      appId: "1:109876543210:web:r4nd0mH3xH45h"
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
  </script>

</head>
<body>
  <script src="main.dart.js" type="application/javascript"></script>
</body>
</html>

```

```
For Web App, Firebase Auth and Firestore, add the script tags for those products now in the web/index.html

 ```html
 ...
  <!-- TODO: Add SDKs for Firebase products that you want to use
      https://firebase.google.com/docs/web/setup#available-libraries -->

  <script src="https://www.gstatic.com/firebasejs/7.20.0/firebase-app.js"></script>
  <script src="https://www.gstatic.com/firebasejs/7.5.1/firebase-auth.js"></script>
  <script src="https://www.gstatic.com/firebasejs/7.5.1/firebase-firestore.js"></script>

  <script>
    // Your web app's Firebase configuration
    var firebaseConfig = {
      ...
```
