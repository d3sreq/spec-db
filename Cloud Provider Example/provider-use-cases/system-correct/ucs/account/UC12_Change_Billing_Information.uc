UC12: Change billing information

Level: Subfunction

Goal:
User wants to add/update billing information so that
the invoice contains correct entries.

Preceding: UC7 Login

Main scenario:
1 System asks user to provide billing information.
2 User provides the billing information.
3 System validates the entered data.
4 System saves the billing and account information.

Variation: 2a User cancels the billing information update.
2a1 Use case aborts. #(abort)

Extension: 3a Entered values not valid.
3a1 System notifies user that entered values are not valid. #(abort)
