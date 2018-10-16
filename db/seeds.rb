#create users, patient
seb = User.create(username: "sebby", password: "sebby123")
seb.save
seb.patients.build(name: "Doggy", birth_year: "2010", phone: "201839281", address: "123 Main St", healthcarenumber: "828382112")
seb.save

h1 = History.create(date: "2017-08-01", notes: "Came in with a bald spot, complete physical", action: "Prescribed doggy rogaine", patient: Patient.first)

h1.save

