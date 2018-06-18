jordan = User.create(name: "jordan")
david = User.create(name: "david")

laundry = Project.create(name: "laundry")
cleaning = Project.create(name: "cleaning")
world_domination = Project.create(name: "world domination")

t1 = Task.create(title: "t1",user_id: 1, project_id: 1)
t2 = Task.create(title: "t2",user_id: 2, project_id: 1)
t3 = Task.create(title: "t3",user_id: 1, project_id: 3)
t4 = Task.create(title: "t4",user_id: 2, project_id: 2)
t5 = Task.create(title: "t5",user_id: 1, project_id: 2)

c1 = Comment.create(content: "c1, blah blah blah", task_id: 1)
c2 = Comment.create(content: "c2, blah blah blah", task_id: 3)
c3 = Comment.create(content: "c3, blah blah blah", task_id: 4)

s1 = Status.create(status: "to do", task_id: 1)
s2 = Status.create(status: "to do", task_id: 3)
s3 = Status.create(status: "doing", task_id: 2)
s4 = Status.create(status: "to do", task_id: 5)
s5 = Status.create(status: "done", task_id: 4)
