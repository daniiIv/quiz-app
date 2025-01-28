-- Table: GameSessions
CREATE TABLE GameSessions (
    id SERIAL PRIMARY KEY,
    player_code VARCHAR(10) NOT NULL UNIQUE,
    status VARCHAR(20) NOT NULL CHECK (status IN ('waiting', 'in_progress', 'finished')),
    creators_code VARCHAR(15) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: Players
CREATE TABLE Players (
    id SERIAL PRIMARY KEY,
    nickname VARCHAR(255) NOT NULL,
    game_id INT NOT NULL REFERENCES GameSessions(id) ON DELETE CASCADE,
    score INT DEFAULT 0,
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: Questions
CREATE TABLE Questions (
    id SERIAL PRIMARY KEY,
    game_id INT NOT NULL REFERENCES GameSessions(id) ON DELETE CASCADE,
    text TEXT NOT NULL,
    answers JSONB NOT NULL, -- Stores JSON array of strings
    correct_answer INT NOT NULL
);

-- Table: Answers
CREATE TABLE Answers (
    id SERIAL PRIMARY KEY,
    player_id INT NOT NULL REFERENCES Players(id) ON DELETE CASCADE,
    question_id INT NOT NULL REFERENCES Questions(id) ON DELETE CASCADE,
    selected_answer INT NOT NULL,
    is_correct BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Relationships described in the diagram:
-- GameSessions "has many" Players
-- GameSessions "has many" Questions
-- Players "provides answers for" Answers
-- Questions "contains answers for" Answers
