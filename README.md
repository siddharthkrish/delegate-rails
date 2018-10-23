# Delegation of control

## What
This sample helps application deal with passing control over from one application to another. We'll assume that the two applications don't share the same domain (we'll run them on different ports) so we can't use simple domain cookies to pass information like JWT tokens.

## Directory structure
- **login**: The application that the control will be passed to. As a sample, this is a simple login screen (it'll accept any username & password)
- **client**: The application that the users generally use. This application will pass the user off to the *login* application for auth and then continue when the user is logged in successfully.