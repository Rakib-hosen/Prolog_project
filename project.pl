
student(rakib, 'C173038', 3.00, ai, os, econ,'Rakib hosen').
student(sakib, 'C173035', 3.25, db, econ, sw, 'Sakibul hasan').
student(seam, 'C173034', 3.50, ai, db, econ, 'Seam Aftab').
student(shuvo, 'C173065', 4.00, econ, os, db,'Kawser Alam Shuvo').

point(Name):-student(Name, _, Point, _, _, _,_),
             format('CGPA of ~w is ~2f.', [Name, Point]).   
point(Id):-student(_, Id, Point, _, _, _,_),
           format('CGPA of ~w is ~2f.', [Id, Point]).   

subject(Name):-student(Name, _, _, Firstsub, Secondsub, Thirdsub,_),
            format('~w taken these subjects: ~w, ~w, ~w.', [Name, Firstsub, Secondsub, Thirdsub]).
subject(Id):-student(_, Id, _, Firstsub, Secondsub, Thirdsub,_),
            format('~w taken these subjects: ~w, ~w, ~w.', [Id, Firstsub, Secondsub, Thirdsub]).

name(Id):-student(_, Id,_, _, _, _,Fullname),
          format('~w id is ~w.', [Id, Fullname]),nl.
id(Fullname):-student(_, Id,_, _, _, _,Fullname),
              format("Id of ~w is ~w",[Fullname, Id]).

fullname(Name):-student(Name, _, _, _, _, _, Fullname),
            format("~w's full name is ~w.",[Name, Fullname]),nl.
fullname(Id):-student(_, Id, _, _, _, _, Fullname),
            format('~ws full name is ~w.',[Id, Fullname]),nl.

fullinfo(Name):-student(Name, Id, Point, Firstsub, Secondsub, Thirdsub, Fullname),
            format("Name: ~w",[Fullname]),nl,
            format("Id: ~w",[Id]),nl,
            format("CGPA : ~w",[Point]),nl,
            format("Subjects: ~w, ~w, ~w",[Firstsub, Secondsub, Thirdsub]),nl.
fullinfo(Id):-student(Name, Id, Point, Firstsub, Secondsub, Thirdsub, Fullname),
            format("Name: ~w",[Fullname]),nl,
            format("Id: ~w",[Id]),nl,
            format("CGPA : ~w",[Point]),nl,
            format("Subjects: ~w, ~w, ~w",[Firstsub, Secondsub, Thirdsub]),nl.

subjecttook(Name,Subject):- student(Name, _, _, Subject, _, _, _).
subjecttook(Name,Subject):- student(Name, _, _, _, Subject, _, _).
subjecttook(Name,Subject):- student(Name, _, _, _, _, Subject, _).
subjecttook(Id,Subject):- student(_, Id, _, Subject, _, _, _).
subjecttook(Id,Subject):- student(_, Id, _, _, Subject, _, _).
subjecttook(Id,Subject):- student(_, Id, _, _, _, Subject, _).

teacher('T000001', 'Shahidul Islam Khan', 'Associate Professor', '01837184801', 'nayeemkh@gmail.com').
teacher('T000002', 'Dr. Abdul Kader Muhammad Masum', 'Associate Professor', '01842411784', 'akmmasum@iiuc.ac.bd').
teacher('T000003', 'Mr. Tanveer Ahsan', 'Associate Professor & Chairman', '+8801789523129', 'tanveer@iiuc.ac.bd').
teacher('T000004', 'Prof. Mohammed Shamsul Alam' ,'Professor', '01711941680', 'alam_cse@yahoo.com').
subjectteacher('T000001',ai).
subjectteacher('T000002',sw).
subjectteacher('T000003',db).

fullinfo(Id):- teacher(Id, Fullname, Post, Mobile, Email),
                format("Name: ~w",[Fullname]),nl,
                format("Id: ~w", [Id]),nl,
                format("Post: ~w",[Post]),nl,
                format("Mobile: ~w",[Mobile]),nl,
                format("Email: ~w",[Email]),nl,
                subjectteacher(Id, Subject),
                format("Subject: ~w",Subject),nl.
fullinfo(Fullname):- teacher(Id, Fullname, Post, Mobile, Email),
                format("Name: ~w",[Fullname]),nl,
                format("Id: ~w", [Id]),nl,
                format("Post: ~w",[Post]),nl,
                format("Mobile: ~w",[Mobile]),nl,
                format("Email: ~w",[Email]),nl,
                subjectteacher(Id, Subject),
                format("Subject: ~w",Subject),nl.

fullname(Id):-teacher(Id, Fullname, _, _, _),
          format("~w's full name is ~w",[Id, Fullname]).
id(Fullname):-teacher(Id, Fullname, _, _, _),
          format("Id of ~w is ~w",[Fullname, Id]).

mobile(Id):-teacher(Id, _, _, Mobile, _),
            format("Mobile number of ~w is ~w", [Id, Mobile]).
mobile(Fullname):-teacher(_, Fullname, _, Mobile, _),
            format("Mobile number of ~w is ~w", [Fullname, Mobile]).

email(Id):-teacher(Id, _, _, _, Email),
           format("Email address of ~w is ~w", [Id, Email]).
email(Fullname):-teacher(_, Fullname, _, _, Email),
           format("Email address of ~w is ~w", [Fullname, Email]).

studentsofteacher(Id):-subjectteacher(Id, Subject),
                      subjecttook(Sid, Subject),
                      format("~w is the student of ~w in ~w subject",[Sid, Id, Subject]).

staff('st000001','jamal khan', 'Senior Assistant Director','018562546756', 'abc@gmail.com').
staff('st000002','Momin Ullah','Administrative Assistant','04345448488', 'adc@gmail.com').


fullname(Id):-staff(Id, Fullname, _, _, _),
          format("~w's full name is ~w",[Id, Fullname]).
id(Fullname):-staff(Id, Fullname, _, _, _),
          format("Id of ~w is ~w",[Fullname, Id]).

mobile(Id):-staff(Id, _, _, Mobile, _),
            format("Mobile number of ~w is ~w", [Id, Mobile]).
mobile(Fullname):-staff(_, Fullname, _, Mobile, _),
            format("Mobile number of ~w is ~w", [Fullname, Mobile]).

email(Id):-staff(Id, _, _, _, Email),
           format("Email address of ~w is ~w", [Id, Email]).
email(Fullname):-staff(_, Fullname, _, _, Email),
           format("Email address of ~w is ~w", [Fullname, Email]).