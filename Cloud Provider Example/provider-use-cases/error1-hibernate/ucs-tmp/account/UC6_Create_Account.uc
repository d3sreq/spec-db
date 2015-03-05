UC6: Create account

Goal: Register new user account

Level: User

Main scenario:
1 User provides email, password, password confirmation 
  and captcha.
2 System validates the provided data.
3 System sends email to given email address to verify 
  that user has access to the given mailbox.
4 System notifies the user to proceed by following 
  instructions in the sent email.
5 User opens the email and follows the link (the link 
  points to the page that continues in user's registration).
6 System presents legal terms.
7 User accepts the terms.
8 System creates new user account with given email and 
  password. #(emit:email)
9 System assigns user free plan. #(mark:free_plan) 
  #(emit:free_plan)
10 Use case finishes. #(mark:account_created)

Extension: 2a At least one of the entries is missing
  or email in bad format
  or password too short
  or password confirmation doesn't match.
2a1 System shows message with given problem. #(abort)

Extension: 2b Email address already associated with account.
2b1 System shows message that the email address is already 
    associated with an account. #(guard:account_created)
2b2 System sends email to the given email address with login 
    instructions. #(abort)
