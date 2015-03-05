UC21: Hibernate application subfunction

Level: Subfunction

Primary: false

Main scenario:
1 System changes state of the git repository to hibernated.
2 System compresses the disk image used by application.
3 System saves the disk image used by application.
4 System frees the disk space used by application.
5 System sets application state to hibernated. #(open:app_hibernated)
  #(mark:app_hibernated)