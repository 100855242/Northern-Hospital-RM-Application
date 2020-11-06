INSERT INTO StaffRole
    (StaffType)
VALUES('Admin'),
    ('Clinician');

INSERT INTO Staff
    (Email,FirstName,Surname,[Password],Salt,RoleID)
VALUES('staff@staff.com', 'Staff', 'One', HASHBYTES('SHA2_512', CONCAT('password', 'salt', 'this15myp3pper')), 'salt', 1),
    ('staff2@staff.com', 'Staff', 'Two', HASHBYTES('SHA2_512', CONCAT('password', 'salt', 'this15myp3pper')), 'salt', 2);

INSERT INTO Patient
    (URNumber,Email,Title,SurName,FirstName,Gender,DOB,[Address],Suburb,PostCode,MobileNumber,HomeNumber,CountryOfBirth,PreferredLanguage,[Password],Salt,LivesAlone,RegisteredBy,Active)
VALUES('123456789', 'patient@patient.com', 'Mr', 'John', 'Doe', 'Male', GETDATE(), '123 Evergreen Terrace', 'Springfield', '1234', '0123456789', '0123456789', 'Australia', 'English', HASHBYTES('SHA2_512', CONCAT('password', 'salt', 'this15myp3pper')), 'salt', 0, 1, 1),
    ('987654321', 'patient2@patient.com', 'Mrs', 'Jane', 'Doe', 'Female', GETDATE(), '123 Evergreen Terrace', 'Springfield', '1234', '0123456789', '0123456789', 'Australia', 'English', HASHBYTES('SHA2_512', CONCAT('password', 'salt', 'this15myp3pper')), 'salt', 0, 1, 1);

INSERT INTO Measurement
    (MeasurementName, Frequency)
VALUES('ECOG Status', 28),
    ('Likert Scale', 1),
    ('Breathlessness', 1),
    ('Level of Pain', 1),
    ('Fluid Drain', 0),
    ('Quality of Life', 7),
    ('HADS', 84),
    ('Ventolin', 1);

INSERT INTO DataPoint
    (MeasurementID,DataPointNumber,UpperLimit,LowerLimit,[Name])
VALUES(1, 1, 4, 0, 'ECOG Status'),
    (2, 1, 5, 1, 'Likert Scale'),
    (3, 1, 100, 0, 'Breathlessness Input'),
    (3, 2, 100, 0, 'Breathlessness Slider'),
    (4, 1, 100, 0, 'Level of Pain Input'),
    (4, 2, 100, 0, 'Level of Pain Slider'),
    (5, 1, 600, 0, 'Fluid Drain'),
    (6, 1, 5, 1, 'Mobility'),
    (6, 2, 5, 1, 'Self-Care'),
    (6, 3, 5, 1, 'Usual-Activies'),
    (6, 4, 5, 1, 'Pain/Discomfort'),
    (6, 5, 5, 1, 'Anxiety/Depression'),
    (6, 6, 100, 0, 'QoL Vas Health Input'),
    (6, 7, 100, 0, 'QoL Vas Health Slider'),
    (7, 1, 3, 0, 'Anxiety - Tense'),
    (7, 2, 3, 0, 'Depression - Enjoyment'),
    (7, 3, 3, 0, 'Anxiety - Frightened awful'),
    (7, 4, 3, 0, 'Depression - Laugh'),
    (7, 5, 3, 0, 'Anxiety - Worrying thoughts'),
    (7, 6, 3, 0, 'Depression - Cheerful'),
    (7, 7, 3, 0, 'Anxiety - Relaxed'),
    (7, 8, 3, 0, 'Depression - Slowed'),
    (7, 9, 3, 0, 'Anxiety - Frightened butterflies'),
    (7, 10, 3, 0, 'Depression - Appearance'),
    (7, 11, 3, 0, 'Anxiety - Restless'),
    (7, 12, 3, 0, 'Depression - Looking forward'),
    (7, 13, 3, 0, 'Anxiety - Panic'),
    (7, 14, 3, 0, 'Depression - Book/Radio/TV'),
    (8, 1, 3, 0, 'Ventolin')

INSERT INTO ResourceType
    (TypeName)
VALUES('phone'),
    ('pdf'),
    ('link'),
    ('dialog');

INSERT INTO [Resource]
    (Title,Prompt,Content,TypeID)
VALUES('Pleural Nurse Clinical Consultant', '0428-167-972', '', 1),
    ('How to perform a Visual Analogue Score', 'Click Here', '', 4),
    ('How to drain your Indwelling Pleural Catheter', 'Click Here', '', 4),
    ('Northern Health Respiratory Medicine', 'Click Here', 'https://www.nh.org.au/service/respiratory-medicine/', 3),
    ('Indwelling Pleural Catheter Information Sheet', 'Click Here', 'IPC.pdf', 2);

INSERT INTO ResourceDialog
    (Heading,Content,Video,ResourceID)
VALUES('How to perform VAS score', 'Instruction: To help you to best describe how good or bad you feel on a given day, we have drawn a scale from Best on the top of the slider to Worst on the bottom of the slider. Please position the slider at the point that describes how you feel today.', NULL, 2),
    ('How to drain your Indwelling Pleural Catheter', 'Please enter the amount of fluid you have drained today in millilitres. Enter the value in the box. <p>Below is a video which details how to perform a fluid drainage of an Indwelling Pleural Catheter.</p>', 'https://player.vimeo.com/video/270685188', 3);

INSERT INTO RecordCategory
    (Category)
VALUES('Immunisation');

INSERT INTO RecordType
    (RecordType,RecordCategoryID)
VALUES('MMR', 1);

INSERT INTO PatientRecord
    (DateTimeRecorded,Notes,URNumber,RecordTypeID)
VALUES(GETDATE(), 'No Notes', '123456789', 1);

INSERT INTO Treating
    (StartDate,EndDate,URNumber,StaffID)
VALUES(GETDATE(), GETDATE(), '123456789', 1);

INSERT INTO TemplateCategory
    (CategoryName)
VALUES('Indwelling Pleural Catheter'),
    ('Asthma');

INSERT INTO PatientCategory
    (CategoryID,URNumber)
VALUES(1, '123456789'),
    (2, '123456789'),
    (2, '987654321');

INSERT INTO PatientResource
    (CategoryID,URNumber,ResourceID)
VALUES(1, '123456789', 1),
    (1, '123456789', 2),
    (1, '123456789', 3),
    (1, '123456789', 4),
    (1, '123456789', 5),
    (2, '123456789', 1),
    (2, '987654321', 1),
    (2, '987654321', 2),
    (2, '987654321', 3);

INSERT INTO TemplateResource
    (CategoryID,ResourceID)
VALUES(1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5);

INSERT INTO TemplateMeasurement
    (MeasurementID,CategoryID)
VALUES(1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 1),
    (7, 1),
    (1, 2),
    (3, 2),
    (6, 2),
    (8, 2);

INSERT INTO PatientMeasurement
    (MeasurementID,CategoryID,URNumber)
VALUES(1, 1, '123456789'),
    (2, 1, '123456789'),
    (3, 1, '123456789'),
    (4, 1, '123456789'),
    (5, 1, '123456789'),
    (6, 1, '123456789'),
    (7, 1, '123456789'),
    (1, 2, '123456789'),
    (3, 2, '123456789'),
    (6, 2, '123456789'),
    (8, 2, '123456789'),
    (1, 2, '987654321'),
    (3, 2, '987654321'),
    (6, 2, '987654321'),
    (8, 2, '987654321');

INSERT INTO SurveyQuestion
    (MeasurementID, DataPointNumber, CategoryName, Question)
VALUES(7, 1, 'Anxiety', 'I feel tense or ''wound up'':'),
    (7, 2, 'Depression', 'I still enjoy the things I used to enjoy:'),
    (7, 3, 'Anxiety', 'I get a sort of frightened feeling as if something awful is about to happen:'),
    (7, 4, 'Depression', 'I can laugh and see the funny side of things:'),
    (7, 5, 'Anxiety', 'Worrying thoughts go through my mind:'),
    (7, 6, 'Depression', 'I feel cheerful: '),
    (7, 7, 'Anxiety', 'I can sit at ease and feel relaxed:'),
    (7, 8, 'Depression', 'I feel as if I am slowed down:'),
    (7, 9, 'Anxiety', 'I get a sort of frightened feeling like ''butterflies'' in the stomach:'),
    (7, 10, 'Depression', 'I have lost interest in my appearance:'),
    (7, 11, 'Anxiety', 'I feel restless as I have to be on the  move:'),
    (7, 12, 'Depression', 'I look forward with enjoyment to things:'),
    (7, 13, 'Anxiety', 'I get sudden feelings of panic:'),
    (7, 14, 'Depression', 'I can enjoy a good book or radio or TV program:')


INSERT INTO SurveyAnswer
    (MeasurementID,DataPointNumber,AnswerNumber,AnswerText, [Value])
VALUES
    (7, 1, 0, 'Most of the time', 3),
    (7, 1, 1, 'A lot of time', 2),
    (7, 1, 2, 'From time to time, occasionally', 1),
    (7, 1, 3, 'Not at all', 0),

    (7, 2, 0, 'Definitely as much', 0),
    (7, 2, 1, 'Not quite so much', 1),
    (7, 2, 2, 'Only a little', 2),
    (7, 2, 3, 'Hardly at all', 3),

    (7, 3, 0, 'Very definitely and quite badly', 3),
    (7, 3, 1, 'Yes, but not too badly', 2),
    (7, 3, 2, 'A little, but it doesn''t worry me', 1),
    (7, 3, 3, 'Not at all', 0),

    (7, 4, 0, 'As much as I always could', 0),
    (7, 4, 1, 'Not quite so much now', 1),
    (7, 4, 2, 'Definitely not so much now', 2),
    (7, 4, 3, 'Not at all', 3),

    (7, 5, 0, 'A great deal of the time', 3),
    (7, 5, 1, 'A lot of the time', 2),
    (7, 5, 2, 'From time to time, but not too often', 1),
    (7, 5, 3, 'Only occasionally', 0),

    (7, 6, 0, 'Not at all', 0),
    (7, 6, 1, 'Not often', 1),
    (7, 6, 2, 'Sometimes', 2),
    (7, 6, 3, 'Most of the time', 3),

    (7, 7, 0, 'Definitely', 0),
    (7, 7, 1, 'Usually', 1),
    (7, 7, 2, 'Not Often', 2),
    (7, 7, 3, 'Not at all', 3),

    (7, 8, 0, 'Not at all', 3),
    (7, 8, 1, 'Not often', 2),
    (7, 8, 2, 'Sometimes', 1),
    (7, 8, 3, 'Most of the time', 0),

    (7, 9, 0, 'Not at all', 0),
    (7, 9, 1, 'Occasionally', 1),
    (7, 9, 2, 'Quite Often', 2),
    (7, 9, 3, 'Very Often', 3),

    (7, 10, 0, 'Definitely', 3),
    (7, 10, 1, 'I don''t take as much care as I should', 2),
    (7, 10, 2, 'I may not take quite as much care', 1),
    (7, 10, 3, 'I take just as much care as ever', 0),

    (7, 11, 0, 'Very much indeed', 3),
    (7, 11, 1, 'Quite a lot', 2),
    (7, 11, 2, 'Not very much', 1),
    (7, 11, 3, 'Not at all', 0),

    (7, 12, 0, 'As much as I ever did', 0),
    (7, 12, 1, 'Rather less than I used to', 1),
    (7, 12, 2, 'Definitely less than I used to', 2),
    (7, 12, 3, 'Hardly at all', 3),

    (7, 13, 0, 'Very often indeed', 3),
    (7, 13, 1, 'Quite often', 2),
    (7, 13, 2, 'Not very often', 1),
    (7, 13, 3, 'Not at all', 0),

    (7, 14, 0, 'Often', 0),
    (7, 14, 1, 'Sometimes', 1),
    (7, 14, 2, 'Not often', 2),
    (7, 14, 3, 'Very seldom', 3)