UC3: Start application

Level: User

Preceding: UC7 Login, UC1 Create application

Main scenario:
1 User selects application to start or the application
  to be started is given by the calling use case.
2 System checks state of the application.
3 System checks that application can be started -
  maximum number of running applications is not exceeded
4 System pulls changes from the application's repository
  to the location where application is being run.
5 System starts the application and makes it available
  on the given url.
6 System changes state of the application to running.

Extension: 2a Application in running or suspended state.
2a1 System notifies user that the application has been 
    already started.
2a2 Use case aborts. #(abort)