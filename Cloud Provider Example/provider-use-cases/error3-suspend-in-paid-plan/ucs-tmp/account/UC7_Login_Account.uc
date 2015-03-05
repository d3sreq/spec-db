UC7: Login

Goal: Authenticates user.

Level: Subfuction

Preceding: UC6 Create account

Note: 
- complication: openshift can create authorization token
  for subsequent requests that expires after 1 day.

Main scenario:
1 User enters login and password.
2 System verifies login and password. #(consume:email)

Extension: 2a User entered wrong credentials
2a1 System shows error message. #(abort)
