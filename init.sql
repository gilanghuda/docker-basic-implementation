CREATE TABLE users (
    userid VARCHAR PRIMARY KEY,
    username VARCHAR UNIQUE NOT NULL,
    email VARCHAR UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role VARCHAR(20) DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE sessions (
    sessionid VARCHAR PRIMARY KEY,
    title VARCHAR NOT NULL,
    description TEXT,
    speaker VARCHAR,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    max_seats INT NOT NULL,
    created_by VARCHAR ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (created_by) REFERENCES users(userid)
);

CREATE TABLE session_registrations (
    registrationid VARCHAR PRIMARY KEY,
    sessionid VARCHAR NOT NULL,
    userid VARCHAR NOT NULL,
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sessionid) REFERENCES sessions(sessionid),
    FOREIGN KEY (userid) REFERENCES users(userid)
);

CREATE TABLE session_proposals (
    proposalid VARCHAR PRIMARY KEY,
    title VARCHAR NOT NULL,
    description TEXT,
    speaker VARCHAR,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    max_seats INT NOT NULL,
    proposed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'pending',
    userid VARCHAR NOT NULL,
    FOREIGN KEY (userid) REFERENCES users(userid)
  );

CREATE TABLE feedback (
    feedbackid VARCHAR PRIMARY KEY,
    sessionid VARCHAR NOT NULL,
    userid VARCHAR NOT NULL,
    comment TEXT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sessionid) REFERENCES sessions(sessionid),
    FOREIGN KEY (userid) REFERENCES users(userid)
);

INSERT INTO users (userid, username, email, password) VALUES 
('1', 'poros', 'poros@gmail.com', 'poropassword');
