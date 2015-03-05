UC9: Change plan

Level: User

Goal: 
User wants to change plan associated with his account.

Preceding: UC7 Login

Main scenario:
1 User initiates change of the plan.
2 System presents information about current plan and available plans.
3 User has free plan associated and wants to upgrade to paid plan. 
  #(mark:paid_considered)
4 System checks that it has billing information of the user.
5 System checks that it has credit card of the user.
6 System presents review of the plan change
  and presents terms and conditions.
7 User confirms the plan change.
8 System computes first payment according to days left to the
  end of the current month and substracts it from the credit
  card.
9 System changes the user's plan.


Variation: 3a User has paid plan associated and wants to 
  downgrade to free plan.
3a1 System skips billing information and credit card selection. 
    #(goto:6)

Variation: 3b User selected same plan that has already associated.
3b1 System informs user that he has the selected plan
    already associated.
3b2 Use case aborts. #(abort)

Variation: 3c User cancels the plan change.
3c1 Use case aborts. #(abort)

Extension: 4a User wants to change billing information 
  or the information has not been entered yet.
4a1 User provides billing information. #(include:UC12)

Extension: 5a User wants to change credit card
  or the credit card has not been registered yet.
5a1 User provides credit card information. #(include:UC13)

Variation: 7a User cancels the plan change.
7a1 Use case aborts. #(abort)

Extension: 8a Payment fails.
8a1 System shows message to user that the payment failed.
8a2 Use case aborts. #(abort)

Extension: 9a System changed the plan to the paid one.
9a1 Use case finishes. #(guard:paid_considered) 
    #(mark:paid_plan) #(delete:free_plan)

Extension: 9b System changed the plan to free.
9b1 Use case finishes. #(guard:!paid_considered) #(emit:free_plan)