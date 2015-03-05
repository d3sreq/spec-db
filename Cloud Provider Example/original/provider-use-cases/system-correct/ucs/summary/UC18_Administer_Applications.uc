UC18: Administer application

Level: Summary

Preceding: UC1, UC2, UC3, UC4, UC15 TODO - added to satisfy constraint

Main scenario:
1 User creates an application. #(include:UC1)
2 User evaluates the service. (this step is just target for gotos)
3 User modifies the application using Git. #(include:UC15)
4 User deletes the application. #(include:UC2)

Variation: 3a User decides to start the application.
3a1 User starts the application. #(include:UC3)

Variation: 3a User decides to stop the application.
3a1 User stops the application. #(include:UC4)

Variation: 3b User decides to hibernate application.
3b1 User hibernates the application. #(include:UC5)

Variation: 3c User does not want to perform any of the
  actions specified in step 3, 3a, 3b or 3c
3c1 Flow of the use case continues with next step.

Variation: 4a User intends to perform additional action
  with application.
5a1 User performs additional action. #(goto:2)
