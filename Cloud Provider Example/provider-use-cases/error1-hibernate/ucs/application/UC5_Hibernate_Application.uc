UC5: Hibernate application

Level: User

Preceding: UC7 Login, UC4 Stop application

Main scenario:
1 User selects application to hibernate.
2 System checks that application can be hibernated.
3 System prompts user to confirm hibernation.
4 User confirms the hibernation.
5 System initiates application hibernation. #(include:UC21)
6 Use case finishes. #(close:app_hibernated)

Extension: 5a Hibernation aborted.
5a1 Use case aborts. #(abort) #(guard:hibernation_aborted)