:- [
    % System Logic
    system/db,
    system/kb,

    % Dialogue
    dialogue/questions,
    dialogue/answers
].

% Main Logic
:- (
    q_gender,
    q_age,
    q_conditions,
    q_exposure,
    q_symptoms
).

:- a_assessment.
:- a_symptoms.
:- a_high_risk.
