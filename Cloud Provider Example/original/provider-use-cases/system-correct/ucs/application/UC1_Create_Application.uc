UC1: Create application

Level: User

Preceding: UC7 Login

Main scenario:
1 User enters application's name and selects the web cartridge.
2 System validates the inputs.
3 System creates new application with given web cartridge.
  TODO: user can add additional cartridges.
4 System sets the application state to stopped.
5 System creates application's git repository.
6 System creates application's URL.
7 System presents URL and address of the git repository to the user.

Extension: 2a Application with given name already exists
  or name does not have correct format
  or proper web cartridge not selected.
2a1 System shows message refering to given problem. #(abort)
