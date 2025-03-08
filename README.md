## **👪** Entities and Actors

### Entities

1. **User**
   - `userid`: Unique identifier for the user
   - `username`: Username of the user
   - `email`: Email address of the user
   - `password`: Hashed password of the user
   - `role`: Role of the user (e.g., user, event_coordinator, admin)
   - `created_at`: Timestamp when the user was created

2. **Session**
   - `sessionid`: Unique identifier for the session
   - `title`: Title of the session
   - `description`: Description of the session
   - `speaker`: Speaker of the session
   - `start_time`: Start time of the session
   - `end_time`: End time of the session
   - `max_seats`: Maximum number of seats available for the session
   - `created_by`: User who created the session
   - `created_at`: Timestamp when the session was created

3. **Session Proposal**
   - `proposalid`: Unique identifier for the session proposal
   - `title`: Title of the proposed session
   - `description`: Description of the proposed session
   - `speaker`: Speaker of the proposed session
   - `start_time`: Proposed start time of the session
   - `end_time`: Proposed end time of the session
   - `max_seats`: Maximum number of seats for the proposed session
   - `status`: Status of the proposal (e.g., pending, accepted, rejected)
   - `userid`: User who proposed the session
   - `proposed_at`: Timestamp when the proposal was created

4. **Feedback**
   - `feedbackid`: Unique identifier for the feedback
   - `sessionid`: Session for which the feedback is given
   - `userid`: User who gave the feedback
   - `comment`: Comment provided by the user
   - `rating`: Rating provided by the user (1-5)
   - `created_at`: Timestamp when the feedback was created

5. **Session Registration**
   - `registrationid`: Unique identifier for the session registration
   - `sessionid`: Session for which the user registered
   - `userid`: User who registered for the session
   - `registered_at`: Timestamp when the registration was created

### Actors

1. **User**
   - Can register an account
   - Can log in and log out
   - Can edit their profile
   - Can view all conference sessions
   - Can leave feedback on sessions
   - Can view other users' profiles
   - Can register for sessions if seats are available
   - Can create, edit, and delete their session proposals
   - Can edit and delete their sessions

2. **Event Coordinator**
   - Can view all session proposals
   - Can accept or reject session proposals
   - Can remove sessions
   - Can remove user feedback

3. **Admin**
   - Can add new event coordinators
   - Can remove users and event coordinators

## **🧪** API Documentation
[Api documentation](https://documenter.getpostman.com/view/37017335/2sAYQiBTfu)