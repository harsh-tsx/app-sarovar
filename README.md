# app_1point2_store

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

1. new image required for the poin number (4).
2. please provide your desired logo png image.
3. please provide a UI for the point number (7 - a).
4. I did not understand the point number 10.

sudo docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:v7.4.0 generate -i https://reward-api.baam.com.baam.co.in/swagger-app/json -g dart-dio -o /local/custom_api --skip-validate-spec --additional-properties=serializationLibrary=json_serializable,prependFormOrBodyParameters=true,pubName=custom_api,finalProperties=false && cd custom_api && flutter pub get

dart run build_runner build --delete-conflicting-outputs

Pending Tasks
Logo fix
Country input + phone no
Social Sign Up
Forgot Password
Support Chatbot
Subscription functionality
Search functionality
Help Center
Stats & Video Api
Bookmarks and Tabs functionality
New Widget
News API
Algolia
Install Firebase
Install App Lovin
FB & google pixel

Priority

Social signup
News listing on home page
News details
News like comment and book mark
Bookmark page
Tabs page
Paymen gateway
Search and algolia ai suggestions

Fix

Country code
Login signup forgot password change password
Edit Profile
Edit profile image
Privacy policy
Terms and conditions
Contact page
Faq page
