UC16: Subtract monthly fee

Level: User

Trigger: Time based - new month started

Goal: System deducts money from the accounts that have
  paid plan.

Preceding: UC1 Create application, UC9 TODO - added for error2

Main scenario:
1 System checks plan associated with account.
2 Paid plan associated.
3 System deduces monthly fee from the credit card.
4 Use case finishes.

Variation: 2a Free plan associated.
2a1 Use case finishes. #(guard:free_plan) #(goto:4)

Extension: 3a Payment failed.
3a1 System initiates forced plan downgrade.
3a2 System stops random applications that are
    above the limit of the free plan. #(include:UC4)
3a3 System hibernates applications that were stopped in previous
    step. #(include:UC21)    
3a4 System sends email saying that payment failed and list of 
    applications that were hibernated. #(close:app_hibernated)
    #(consume:email)
3a5 System changes plan to free.
