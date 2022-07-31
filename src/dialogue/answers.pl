% Check Symtoms, and tell the patient a diagnosis
a_symptoms :-
    p(symptoms, S), is_severe(S),
    writeln('Serious symptoms: need to seek immediate medical attention, \nproceeding with an initial assessment call (no contacts) to the doctor or health facility.'), nl; true.

% Check for the risk of the patient
a_high_risk :-
    p(gender, G), p(age, A), p(cond, C),
    high_risk(A, G, C),
    write('WARNING: You are a person with a high risk to develop severe symptoms, please seek medical \ncare/attention. \n'), nl; true.

% Final assessment
a_assessment :-
    p(gender, Gender), p(age, Age), p(cond, Cond),
    p(symptoms, Symptoms), p(exposure, Exposure),
    assess(Age, Gender, Cond, Exposure, Symptoms, V),
    assessment(V, L),
    format('Your overall infection risk level is [~w], and you are [~w] to be infected.\n', [V, L]), nl.
