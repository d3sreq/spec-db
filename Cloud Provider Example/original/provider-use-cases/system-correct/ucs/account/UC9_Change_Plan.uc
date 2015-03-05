UC9: Change plan

Level: User

Goal: 
User wants to change plan associated with his account.

Preceding: UC7 Login

Main scenario:
1 User initiates change of the plan.
2 System presents information about current plan and available plans.
3 User selects upgrade to paid plan. #(mark:wants_paid_plan)
4 System evaluates that user has free plan associated 
  and wants to upgrade to paid plan.
5 System checks that it has billing information of the user.
6 System checks that it has credit card of the user.
7 System presents review of the plan change
  and presents terms and conditions.
8 User confirms the plan change.
9 System computes first payment according to days left to the
  end of the current month and substracts it from the credit
  card.
10 System changed the plan to the paid one. #(unmark:free_plan) 
   #(delete:free_plan)


Variation: 3a User wants to downgrade to free plan.
3a1 User selects downgrade to free plan. 
    #(guard:!free_plan) #(unmark:wants_paid_plan)

Variation: 4a System evaluates that user has paid plan associated
  and wants to downgrade to free plan.
4a1 System skips billing information and credit card selection.
    #(guard:!free_plan & !wants_paid_plan) #(goto:7)

Variation: 4b User selected same plan that has already associated.
4b1 System informs user that he has the selected plan
    already associated. 
    #(guard:free_plan & !wants_paid_plan | !free_plan & wants_paid_plan)
4b2 Use case aborts. #(abort)

Extension: 5a User wants to change billing information 
  or the information has not been entered yet.
5a1 User provides billing information. #(include:UC12)

Extension: 6a User wants to change credit card
  or the credit card has not been registered yet.
6a1 User provides credit card information. #(include:UC13)

Variation: 8a User cancels the plan change.
8a1 Use case aborts. #(abort)

Extension: 9a Payment fails.
9a1 System shows message to user that the payment failed.
9a2 Use case aborts. #(abort)

Variation: 10a System changed the plan to free.
10a1 Use case finishes. #(guard:!wants_paid_plan) 
     #(mark:free_plan) #(emit:free_plan)