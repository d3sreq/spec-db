UC15: Modify application data using Git

Level: User

Preceding: UC7 Login, UC1 Create application

Main scenario:
1 User pushes changes to the application's remote git repository.
2 System detects changes in the application's remote repository.
3 System verifies that application is in running or suspended state.
4 System stops application.
5 System starts application. #(include:UC3)
6 Use case finishes.

Extension: 2a Application in stopped or hibernated state.
2a1 Use case finishes. #(goto:6)