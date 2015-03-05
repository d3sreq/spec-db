UC2: Delete application

Level: User

Preceding: UC7 Login, UC1 Create application

Main scenario:
1 User selects application to delete.
2 System shows warning message and asks for user confirmation.
3 User confirms the delete.
4 System checks state of the application.
5 System deletes the application.
6 System deletes the git repository.
7 System informs user that the application has been deleted.

Extension: 4a Application is in the running or suspended state.
4a1 System stops application. #(include:UC4)