UC10: Delete account

Level: User

Goal:
User wants to leave the service and wants all his data
to be removed from the system.

Preceding: UC7 Login

Main scenario:
1 User deletes all his applications. TODO: include delete ?
2 User changes plan to free. TODO: include change plan ?
3 User fills out online survey form - writes his email associated
  with account and reason for leaving the service.
4 System deletes the data associated with user account.
  #(delete:terms) #(delete:email) #(delete:password)
