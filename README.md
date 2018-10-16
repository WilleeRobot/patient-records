# Patient Records

This Sinatra web application is a prototype for a patient database management system.  The application is meant to be used in a medical clinic setting with multiple physicians working in the clinic, and a centralized administrative system.

Users (i.e. physicians) will create their own unique login with a username and a password.  After creating a login, the user will be able to add patients to his or her profile.  In its current form, the application only allows for primitive patient information as follows: 
    1) Name
    2) Birth Year
    3) Phone
    4) Address
    5) Health Care Number
    
Users will be able to create patient histories for any particular patient.  The history record belongs to the patient who in turn belongs to a specific user, and it is only the specific user that will be able to login, access, read, update, and delete the patient corresponding histories. 

In addition, the main patient list page will show a list of active users in the clinic and number of patients that any particular user has.  This is a blueprint with future extendability to account for the maximum capacity of the clinic and for the individual user.  Further, the user will in the future be able to have specific attributes that define the physician, e.g. specialty, subspecialty, gender, years in practice, etc.

** The code is a work in progress.  Suggestions on how to improve user functionality is welcome. **

## Installation

Simply fork and clone the repository to your local drive.

And then execute:

    $ bundle

## Usage

LOGIN/SIGNUP:
1. If you do not have a user account, create one on the login page.  If the user exists, error messages will indicate as such.
2. If you have a user account, click the login link and enter your username and password to enter your main patient portal page.

PATIENT PAGE:
1. Once logged in, the default page will show a list of the user's patients and basic information.  There is also a table below showing the number of patient history records with a summary of the date of the record and the diagnosis.
2. To add a patient record, click create new patient where the screen will bring you to a page where you can enter the relevant information.
3. Once a patient record exists, you can add a patient history to the patient by clicking on "Create Patient History".
4. Enter the date, Diagnosis, and patient history.

EDITING: 
1. A patient record can be edited on the patient detail page, using the edit link.
2. A patient history can be edited on the history detail page, using the edit link.

DELETING:
1. A user can delete a patient record in the patient detail page, using the delete button.
2. A user can delete a patient history record in the patient history detail page, using the delete button.

LOGOUT: 
1. To logout, simply click the logout link to return to the main patient summary page (patients not identifiable here).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/freeWillee/patient-records. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

TO SUBMIT PULL REQUEST:
1) Fork and clone the repo: git clone git@github.com:freeWillee/patient-records.git
2) Make changes
3) Add tests for changes if possible
4) Push to your local fork and submit pull request: https://github.com/freeWillee/patient-records/pulls

** Please allow for at least 3 business days before receiving a response.  Please write tests for changes and write good commit messages.**

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the patient-records project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/freeWillee/patient-records/blob/master/CODE_OF_CONDUCT.md).
