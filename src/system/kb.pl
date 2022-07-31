% Exposure checks if you have been exposed to the virus.
:- discontiguous(exposed/1).
:- discontiguous(exposed/2).

exposed([]) :- false.
exposed(_, []) :- false.
exposed([S|T]) :-
    length(T, L), L > 0;
    integer(S) -> true;
    symptoms(_, _, S),
    exposed(T).
exposed(D, [S|T]) :-
    exposure(days, D),
    symptoms(_, _, S),
    exposed(T).

%Symptom Severity
is_severe([S|T]) :-
    symptoms(severe, _, S);
    is_severe(T).

% Age related groupping
check_age_group(A, G) :-
    A > 0, A < 18, G = age_group(children);
    A >= 18, A < 70, G = age_group(adults);
    A > 69, A < 99, G = age_group(elderly).

% High risk is defined as a person who has a higher risk
% of death due to the virus
:- discontiguous(risk/1).
:- discontiguous(risk/2).

risk([]) :- false.
risk([S|T]) :-
    length(T, L), L > 0;
    integer(S) -> true;
    conditions(_, S),
    risk(T).

% There's a higher risk for males in their late age
high_risk(Age, Gnd, Cond) :-
    high_risk(Age, Cond),
    high_risk(Gnd, Cond).

% There's high risk for people in their old age
high_risk(Age, Cond) :-
    integer(Age),
    check_age_group(Age, G),
    G == age_group(elderly),
    risk(Cond).

% There's high risk for males
high_risk(Gnd, Cond) :-
    atom(Gnd),
    Gnd == male,
    risk(Cond).

% Assess Risk for the Patient
assess(Age, Gnd, Cond, Exposure, Symptoms, V) :-
    high_risk(Age, Gnd, Cond),
    exposed(Exposure, Symptoms),
    V = high_risk.

assess(Age, Gnd, Cond, Exposure, Symptoms, V) :-
    \+ high_risk(Age, Gnd, Cond),
    exposed(Exposure, Symptoms),
    V = medium_risk.

assess(Age, Gnd, Cond, Exposure, Symptoms, V) :-
    \+ high_risk(Age, Gnd, Cond),
    \+ exposed(Exposure, Symptoms),
    V = low_risk.
