UC20: Suspend application

Level: User

Preceding: UC3 Start application

Trigger: Time based - application in free plan has 
         not received a request in one hour.

Goal: System suspends the inactive application so that 
      it doesn't consume system resources.

Main scenario:
1 Application has not received any request for one 
  hour and it has free plan associated.
2 System changes application state to suspended.
  #(mark:app_suspended)
3 Use case finishes.

Variation: 1a Account has paid plan associated.
1a1 System will not suspend application #(guard:!free_plan)
1a2 Use case finishes. #(goto:3)
