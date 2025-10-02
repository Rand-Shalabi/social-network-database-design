
CREATE TABLE Users (
    login VARCHAR(50) PRIMARY KEY, 
    firstName VARCHAR(20) NOT NULL, 
    lastName VARCHAR(20) NOT NULL, 
    password VARCHAR(50) NOT NULL, 
    description VARCHAR(255), 
    dateJoined DATE DEFAULT SYSDATE
);

CREATE TABLE Links (
    linkNo NUMBER(10,0) PRIMARY KEY, 
    user_login VARCHAR(50), 
    link VARCHAR(255) NOT NULL, 
    FOREIGN KEY (user_login) REFERENCES Users (login) 
        ON DELETE CASCADE
);

CREATE TABLE Friends (
    user_login VARCHAR(50), 
    friend VARCHAR(50), 
    sinceDate DATE DEFAULT SYSDATE, 
    PRIMARY KEY (user_login, friend), 
    FOREIGN KEY (user_login) REFERENCES Users (login) 
        ON DELETE CASCADE, 
    FOREIGN KEY (friend) REFERENCES Users (login) 
        ON DELETE CASCADE
);

CREATE TABLE Entries (
    entryId NUMBER(12,0) PRIMARY KEY, 
    user_login VARCHAR(50) NOT NULL, 
    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (user_login) REFERENCES Users (login) 
        ON DELETE CASCADE
);

CREATE TABLE Blurbs (
    entry NUMBER(12,0) PRIMARY KEY, 
    text VARCHAR(4000) NOT NULL, 
    FOREIGN KEY (entry) REFERENCES Entries (entryId) 
        ON DELETE CASCADE
);

CREATE TABLE Comments (
    entry NUMBER(12,0) PRIMARY KEY, 
    parentEntry NUMBER(12,0) NOT NULL, 
    rootEntry NUMBER(12,0) NOT NULL, 
    text VARCHAR(4000), 
    FOREIGN KEY (entry) REFERENCES Entries (entryId) 
        ON DELETE CASCADE, 
    FOREIGN KEY (parentEntry) REFERENCES Entries (entryId) 
        ON DELETE CASCADE, 
    FOREIGN KEY (rootEntry) REFERENCES Entries (entryId) 
        ON DELETE CASCADE
);

CREATE TABLE Images (
    entry NUMBER(12,0), 
    caption VARCHAR(255), 
    image VARCHAR(4000), 
    PRIMARY KEY (entry, caption), 
    FOREIGN KEY (entry) REFERENCES Entries (entryId) 
        ON DELETE CASCADE
);
