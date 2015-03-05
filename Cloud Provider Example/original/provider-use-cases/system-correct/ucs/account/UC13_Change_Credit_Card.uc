UC13: Change credit card

Level: Subfuction

Goal:
User wants to add/update credit card information used
to pay for services.

Preceding: UC7 Login

Main scenario:
1 System asks user for credit card information.
2 User provides the requested information and confirms the update.
3 System validates the given values.
4 System saves the credit card information.

Variation: 2a User cancels the credit card information update.
2a1 Use case aborts. #(abort)

Extension: 3a Credit card information not valid.
3a1 System notifies user about the problem.
3a2 Use case aborts. #(abort)
