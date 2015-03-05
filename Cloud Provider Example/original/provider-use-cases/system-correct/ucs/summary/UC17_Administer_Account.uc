UC17: Administer account

Level: Summary

Preceding: UC7 TODO - added to satisfy constraint

Main scenario:
1 User creates account. #(include:UC6)
2 User evaluates the account.
3 User deletes account. #(include:UC10)

Extension: 2a User decides to change the plan.
2a1 User changes the plan. #(include:UC12)
2a2 Use case continues with step 2. #(goto:2)