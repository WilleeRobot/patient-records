# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
    Done. See project details.

- [x] Use ActiveRecord for storing information in a database
    Done. ActiveRecord used for all models defined in the project (User, Patient, History, with appropriate relationships defined).  Database migrations created with activerecord as well.

- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
    Done.  Multiple models created: history.rb, patient.rb, and user.rb, all housed in the ./app/models folder.

- [x] Include at least one has_many relationship on your User model (x has_many y, e.g. User has_many Posts)
    Done.  A user has many patients,.  A patient also has many histories.

- [x] Include at least one belongs_to relationship on another model (x belongs_to y, e.g. Post belongs_to User)
    Done.  A patient belongs to a user.  A history belongs to a patient.

- [x] Include user accounts
    Done.  Users are identified using unique identifiers (objects) complete with secure_password verification and a username.

- [x] Ensure that users can't modify content created by other users
    Done. Other users cannot modify patient records not belonging to them, same with patient histories.

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    Done. Patient records have routes for creating, reading, updating, and destroying:
    ('/patients/new', '/patients/:id', '/patients/:id/edit', '/patients/:id/delete')

    History records have routes for creating, reading, updating, and destroying:
    ('/patients/:id/histories/new', '/patients/:id/histories/:history_id', '/patients/:id/histories/:history_id/edit', '/patients/:id/histories/:history_id/delete')

- [x] Include user input validations
    Done. User model utilizes validations to ensure that username exists when creating one, and also checks to ensure that when a new user is created that you cannot create on with a prexisting username.

- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
    Done. User validations displays error messages by reading the contents of the array, user.errors.full_messages, and outputting to the appropriate view.

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
    Done.  See README.md file for full details.

Confirm
- [x] You have a large number of small Git commits
    Done.

- [x] Your commit messages are meaningful
    Done.

- [x] You made the changes in a commit that relate to the commit message
    Done.
    
- [x] You don't include changes in a commit that aren't related to the commit message
    Done.
