# password = 123
jordan = User.create(name: "Jordan", email: "jordan@gmail.com",password_digest: "$2a$10$MiXMuYVRank4dq4kSbWO0uCAzu6vT/YryLs5z3QOaLmJoR9QbTMwm")

# password = 123
david = User.create(name: "David", email: "david@gmail.com", password_digest: "$2a$10$BFPmwyPm1cJDnEf2gZuBbeDYVkx6vQyhSwc1fiD5dHwQeYHleC.bW")

laundry = Project.create(name: "laundry", description: "Wash my clothes")
cleaning = Project.create(name: "cleaning", description: "Clean my room")
world_domination = Project.create(name: "world domination", description: "Rule the world!")

c1 = Comment.create(content: "blah blah blah", task_id: 1, user_id: 1)
c2 = Comment.create(content: "meh meh meh", task_id: 3, user_id: 1)
c3 = Comment.create(content: "bleh bleh bleh", task_id: 4, user_id: 2)

s1 = Status.create(status: "To Do")
s2 = Status.create(status: "Doing")
s3 = Status.create(status: "Done")

t1 = Task.create(title: "Buy detergent",user_id: 1, project_id: 1, status_id: 1)
t2 = Task.create(title: "Split colors and whites",user_id: 2, project_id: 1, status_id: 1)
t3 = Task.create(title: "Stock up on canned foods",user_id: 1, project_id: 3, status_id: 3)
t4 = Task.create(title: "Do the dishes",user_id: 2, project_id: 2, status_id: 3)
t5 = Task.create(title: "Clean the bathroom",user_id: 1, project_id: 2, status_id: 2)

up1 = UserProject.create(user_id: 1, project_id: 1)
up2 = UserProject.create(user_id: 2, project_id: 2)
up3 = UserProject.create(user_id: 2, project_id: 1)