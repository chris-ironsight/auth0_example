# Auth0 Example

## Setup

1. Fill in `AUTH0_DOMAIN`, `AUTH0_CLIENT_ID` and `AUDIENCE` in `/assets/cfg/app_settings.json`
2. Fill in `manifestPlaceholders` in `android/app/build.gradle` with the correct domain

## Testing
Happy path:
1. Set Chrome as the default browser
2. Run the app on an Android emulator
3. Hit the login button and follow the login flow

Result: Log in is successful, the app is redirected back to the home screen, and the `idToken` is printed below the log in button

Unhappy path:
1. Download Firefox browser from the Play Store.
2. Set Firefox as the default browser.
3. Run the app on an Android emulator.
4. Hit the login button and follow the login flow

Result: Browser is redirected to a screen that says `Not found.`