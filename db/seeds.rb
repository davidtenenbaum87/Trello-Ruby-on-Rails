# password = 123
jordan = User.create(name: "jordan", email: "jordan@gmail.com",password_digest: "$2a$10$MiXMuYVRank4dq4kSbWO0uCAzu6vT/YryLs5z3QOaLmJoR9QbTMwm")

# password = 123
david = User.create(name: "david", email: "david@gmail.com", password_digest: "$2a$10$BFPmwyPm1cJDnEf2gZuBbeDYVkx6vQyhSwc1fiD5dHwQeYHleC.bW")

laundry = Project.create(name: "laundry", description: "wash my clothes")
cleaning = Project.create(name: "cleaning", description: "clean my room")
world_domination = Project.create(name: "world domination", description: "rule the world")

c1 = Comment.create(content: "blah blah blah", task_id: 1, user_id: 1)
c2 = Comment.create(content: "meh meh meh", task_id: 3, user_id: 1)
c3 = Comment.create(content: "bleh bleh bleh", task_id: 4, user_id: 2)

s1 = Status.create(status: "To Do")
s2 = Status.create(status: "Doing")
s3 = Status.create(status: "Done")

t1 = Task.create(title: "t1",user_id: 1, project_id: 1, status_id: 1)
t2 = Task.create(title: "t2",user_id: 2, project_id: 1, status_id: 1)
t3 = Task.create(title: "t3",user_id: 1, project_id: 3, status_id: 3)
t4 = Task.create(title: "t4",user_id: 2, project_id: 2, status_id: 3)
t5 = Task.create(title: "t5",user_id: 1, project_id: 2, status_id: 2)

up1 = UserProject.create(user_id: 1, project_id: 1)
up2 = UserProject.create(user_id: 2, project_id: 2)
up3 = UserProject.create(user_id: 2, project_id: 1)