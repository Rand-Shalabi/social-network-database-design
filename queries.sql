-- Full outer join
SELECT Users.login,
       link 
FROM Users 
FULL OUTER JOIN Links 
ON Users.login = Links.user_login;

-- Left outer join
SELECT Users.login,
       Friends.friend,
       Friends.sinceDate 
FROM Users 
LEFT OUTER JOIN Friends 
ON Users.login = Friends.user_login;

-- Right outer join
SELECT entryId,
       parentEntry,
       rootEntry,
       text 
FROM Comments 
RIGHT OUTER JOIN Entries 
ON Comments.entry = Entries.entryId;

/*Retrieve the names of users who have posted comments on entries made by their friends,
Using a subquery to identify the entries created by each user's friends.*/
SELECT U1.firstname || ' ' || U1.lastName  UserName, 
       U2.firstname || ' ' || U2.lastName  FriendName, 
       C.text CommentText 
FROM Comments C 
JOIN (
    SELECT F.user_login user1,
             friend friend,
             entryId friend_entry 
    FROM Friends F 
    JOIN Entries E 
    ON friend = E.user_login
    ) 
ON C.parentEntry = friend_entry 
JOIN Users U2 ON U2.login = friend 
JOIN Users U1 ON U1.login = user1 
JOIN Entries E ON U1. login = E.user_login AND C.entry = E.entryId;

-- Display the users and the number of friends for each user, Using the COUNT aggregate function with GROUP BY.
SELECT login UserLogin,
       firstName,
       count(user_login) FriendCount 
FROM Users 
LEFT OUTER JOIN Friends 
ON login = user_login 
GROUP BY login, firstname;