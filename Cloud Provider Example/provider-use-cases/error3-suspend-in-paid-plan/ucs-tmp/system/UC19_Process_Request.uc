UC19: Process request

Level: User

Trigger: Client accesses application's url.

Goal: System processes request

Preceding: UC3 Start application, UC9, UC20 - TODO - added to reveal error3

Main scenario:
1 Client sends request to application's url.
2 System checks that application is in running state.
3 System routes request to application.

Extension: 2a Application is in stopped or hibernated state.
2a1 System responds with error message. #(abort)

Extension: 2b Application is in suspended state.
2b1 System wakes up the application and changes it's state
  to running. #(guard:app_suspended) #(consume:free_plan)
