UC21 Resume application

Primary: false

1 System checks that resume conditions were met.
  (user is in paid plan or request quota for current month not met yet).
2 System resumes suspended application (changes application state to "running").

Extension: 1a Conditions not met.
1a1 Use case aborts. #(abort) #(mark:resume_aborted)