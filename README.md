# quiz-app

### Links to planning contents 

**plan for database** 
https://docs.google.com/spreadsheets/d/140rDv4scoEZv1F_PjADNAejHyPdpPZcV3liXHzyQvq0/edit?usp=sharing

**app planner**
https://docs.google.com/document/d/1m5jjGefIwelaIgXyQ2WOVv3-6Q8w8RK1JF-SQJKnFqs/edit?usp=sharing

## Quiz App Overview
Purpose
The Quiz App is a dynamic platform designed for hosting fun and engaging quiz game nights. It allows organizers to create and manage quiz sessions easily, while participants join the game with a unique code, eliminating the need for complex registration processes. With real-time question delivery, scoring, and a live leaderboard, the app is perfect for casual gatherings, educational activities, or competitive trivia events.

## Key Features

#### For Organizers
**Game Creation:**
- Generate a unique game code for participants to join.
- Add custom questions and answers for each session.

**Real-Time Game Management:**
- Start and control the flow of questions during the game.
- Monitor participant responses and scores live.

**Live Scoreboard:**
- Display player rankings after each round.

#### For Players
**Easy Access:**
- Join a quiz session using the unique game code—no registration required.
- Choose a nickname to participate.

**Interactive Gameplay:**
- Answer questions in real-time.
- Receive immediate feedback on correct and incorrect answers.

**Score Tracking:**
- See live updates on the leaderboard after each round.

## Architecture

**Frontend**
  - Built using React.js (web) or Flutter (mobile).
  - Provides an intuitive and responsive user interface for both organizers and players.
  - Uses WebSocket connections for real-time updates on questions, answers, and scores.
**Backend**
  - Developed in Go for high performance and scalability.
  - Handles game logic, WebSocket communication, and API endpoints.
  - Interfaces with the database to manage game sessions, questions, players, and scores.
**Database**
  - PostgreSQL:
      Stores structured data for games, players, questions, and answers.
      Redis (optional):
      Used for caching real-time game states, ensuring low-latency updates.
