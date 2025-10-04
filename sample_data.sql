-- Users
INSERT INTO Users 
   VALUES('Ahmad_s', 'Ahmad', 'Saleh', 'Ahmad123', 'Interior design student', DATE'2024-05-11'); 

INSERT INTO Users(login, firstName, lastName, password) 
   VALUES('Sara_m', 'Sara', 'Mohammed', 'Sara123'); 

INSERT INTO Users 
   VALUES('Omar_z', 'Omar', 'Zidan', 'Omar123', 'Photographer', SYSDATE); 

INSERT INTO Users 
   VALUES('Rand_s', 'Rand', 'Shalabi', 'Rand123', 'CSE student', DATE'2024-05-02'); 

INSERT INTO Users(login, firstName, lastName, password, description) 
   VALUES('Tala_k', 'Tala', 'Khaled', 'Tala123', 'Data engineer');

-- Links
INSERT INTO Links 
    VALUES(1, 'Rand_s', 'https://website.com/Rand_s'); 
 
INSERT INTO Links 
   VALUES(2, 'Ahmad_s', 'https://website.com/Ahmad_s'); 
 
INSERT INTO Links 
   VALUES(3, 'Sara_m', 'https://website.com/Sara_m'); 
 
INSERT INTO Links(linkNo, link) 
   VALUES(4, 'https://website.com/User_');

-- Friends
INSERT INTO Friends(user_login, friend) 
   VALUES('Ahmad_s', 'Rand_s'); 
 
INSERT INTO Friends(user_login, friend) 
   VALUES('Ahmad_s', 'Omar_z'); 
 
INSERT INTO Friends 
   VALUES('Ahmad_s', 'Sara_m', DATE'24-12-01'); 
 
INSERT INTO Friends 
   VALUES('Sara_m', 'Ahmad_s', DATE'24-12-01'); 
 
INSERT INTO Friends 
   VALUES('Sara_m', 'Rand_s', DATE'24-11-11'); 
 
INSERT INTO Friends(user_login, friend) 
   VALUES('Rand_s', 'Ahmad_s'); 
 
INSERT INTO Friends 
   VALUES('Rand_s', 'Sara_m', DATE'24-11-11'); 
 
INSERT INTO Friends(user_login, friend) 
   VALUES('Omar_z', 'Ahmad_s');

-- Entries:
INSERT INTO Entries(entryId, user_login) 
   VALUES(101, 'Ahmad_s'); 
 
INSERT INTO Entries(entryId, user_login) 
   VALUES(102, 'Omar_z'); 
 
INSERT INTO Entries(entryId, user_login) 
   VALUES(103, 'Sara_m'); 

INSERT INTO Entries(entryId, user_login) 
   VALUES(104, 'Ahmad_s'); 
 
INSERT INTO Entries(entryId, user_login) 
   VALUES(105, 'Rand_s'); 
 
INSERT INTO Entries(entryId, user_login)            
   VALUES(106, 'Sara_m');

-- Blurbs
INSERT INTO Blurbs 
   VALUES(101, 'I had a wonderful trip to Paris'); 
 
INSERT INTO Blurbs 
   VALUES(105, 'Weekend movie marathon! Just watched a bunch of classics, What is your all time favorite movie?'); 

-- Comments
INSERT INTO Comments 
   VALUES(102, 101, 101, 'Sounds awesome, Did you visit the Louvre?'); 
 
INSERT INTO Comments 
   VALUES(103, 101, 101, 'Glad you had a great time!'); 
 
INSERT INTO Comments 
   VALUES(104, 102, 101, 'Yes, and it was incredible! Worth the visit.'); 
 
INSERT INTO Comments 
   VALUES(106, 105, 105, 'Sounds like a perfect weekend! My all time favorite movie is definitely Inception');

-- Image
INSERT INTO Images(entry, caption) 
   VALUES(101, 'Eiffel tower at night', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tripsavvy.com%2Fthe-eiffel-tower-light-show-4139783&psig=AOvVaw2VdHWRxmW6e8U50hxHFW0K&ust=1759653579202000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCKCjlsySipADFQAAAAAdAAAAABAV');  
 
INSERT INTO Images(entry, caption) 
   VALUES(101, 'Parisian café', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bistrot-cafe-de-paris.com%2Fblog-en%2Fparisian-terraces-the-art-of-french-living&psig=AOvVaw2gryyIzRraUH2oEtqT50TO&ust=1759653656293000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCOiAiu2SipADFQAAAAAdAAAAABAE');
