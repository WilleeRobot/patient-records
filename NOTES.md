1) Separate Patient History from patient object;
2) Create a separate History object

History: 
    date => string ==> DATE OBJECT
    notes => string ==> FREE TEXT FORM
    action => string  ==> TO DESCRIBE ONE ACTION ITEM
    belongs_to :patient

Patient
    has_many :histories