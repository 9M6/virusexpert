% Read the Age of the Patient
q_gender :-
    retractall(p(gender, _)),
    write('Enter your Gender (1. Male, 2. Female): '),
    read(X),
    gender(G, X),
    assertz(p(gender, G)), nl.

% Pull the age of the patient
q_age :-
    retractall(p(age, _)),
    write('Enter your Age: '),
    read(Age),
    assertz(p(age, Age)), nl.

% Read the Symptoms of the patient
q_symptoms :-
    retractall(p(symptoms, _)),
    writeln('Enter your Symptoms by typing the number once at a time, or type 0. to terminate:'),
    findall([X3, X2, X1], symptoms(X1, X2, X3), X),
    d_symptoms(X),
    r_symptoms(S),
    assertz(p(symptoms, S)), nl.

r_symptoms([S|L]) :-
    read(S),
    integer(S),
    dif(S, 0),
    r_symptoms(L).
r_symptoms([]).

d_symptoms([S|L]) :-
    format('~w. ~w (~w) \n', S),
    d_symptoms(L).
d_symptoms([]).

% Read conditions of the patient
q_conditions :-
    retractall(p(cond, _)),
    writeln('Enter your Health Conditions if you have any or type 0. to terminate:'),
    findall([X2, X1], conditions(X1, X2), X),
    d_conditions(X),
    r_conditions(S),
    assertz(p(cond, S)), nl.

r_conditions([S|L]) :-
    read(S),
    integer(S),
    dif(S, 0),
    r_conditions(L).
r_conditions([]).

d_conditions([S|L]) :-
    format('~w. ~w \n', S),
    d_conditions(L).
d_conditions([]).

% Detect events in the past few days
q_exposure :-
    retractall(p(exposed, _)),
    write('Have you been exposed to someone who showed symptoms (coughing, sneezing, etc.) the past few days? (y,n):'),
    read(E),
    assertz(p(exposed, E)),
    E == y -> (
        retractall(p(exposure, _)),
        write('How many days ago?'),
        read(T),
        assertz(p(exposure, T))
    ); true, nl.
