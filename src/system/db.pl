% Define a global patient data for prolog.
:- dynamic p/1.
:- dynamic p/2.

p(gender, none).
p(age,       0).
p(cond,     []).
p(symptoms, []).
p(exposed,   n).
p(exposure, 00).

% Transmission of the disease
:- discontiguous(transmission/1).
:- discontiguous(transmission/2).

transmission(sneezing).
transmission(sneezing, 1).

transmission(coughing).
transmission(coughing, 2).

transmission(touching).
transmission(touching, 3).

transmission(touching, copper).
transmission(touching, cardboard).
transmission(touching, plastic).
transmission(touching, stainless_steel).

% Virus Exposure
exposure(days, 1).
exposure(days, 2).
exposure(days, 3).
exposure(days, 4).
exposure(days, 5).
exposure(days, 6).
exposure(days, 7).
exposure(days, 8).
exposure(days, 9).
exposure(days, 10).
exposure(days, 11).
exposure(days, 12).
exposure(days, 13).
exposure(days, 14).

% Virus Resilience
:- discontiguous(resilience/1).
:- discontiguous(resilience/2).

resilience(hours).
resilience(hours, copper).
resilience(hours, cardboard).

resilience(days).
resilience(days, plastic).
resilience(days, stainless_steel).

% Virus Exposure

% Symptoms
:- discontiguous(symptoms/1).
:- discontiguous(symptoms/2).
:- discontiguous(symptoms/3).

symptoms(coughing).
symptoms(fever).
symptoms(sneezing).
symptoms(tiredness).

symptoms(common, coughing, 1).
symptoms(common, fever, 2).
symptoms(common, sneezing, 3).
symptoms(common, tiredness, 4).

symptoms(aches_pains).
symptoms(sore_throat).
symptoms(conjunctivitis).
symptoms(diarrhea).
symptoms(headache).
symptoms(anosmia_hyposmia).
symptoms(running_nose).

symptoms(mild, aches_pains, 5).
symptoms(mild, sore_throat, 6).
symptoms(mild, conjunctivitis, 7).
symptoms(mild, diarrhea, 8).
symptoms(mild, headache, 9).
symptoms(mild, anosmia_hyposmia, 10).
symptoms(mild, running_nose, 11).

symptoms(shortness_of_breath).
symptoms(chest_pains).
symptoms(loss_of_movement).
symptoms(loss_of_speech).

symptoms(severe, shortness_of_breath, 12).
symptoms(severe, chest_pains, 13).
symptoms(severe, loss_of_movement, 14).
symptoms(severe, loss_of_speech, 15).

% Infected
:- discontiguous(type/1).
:- discontiguous(type/2).

type(symptomatic).
type(symptomatic, 1).

type(asymptomatic).
type(asymptomatic, 2).

% Gender
:- discontiguous(gender/1).
:- discontiguous(gender/2).

gender(male).
gender(male, 1).

gender(female).
gender(female, 2).

% Age Group
:- discontiguous(age_group/1).
:- discontiguous(age_group/2).

age_group(children).
age_group(children, 1).

age_group(adults).
age_group(adults, 2).

age_group(elderly).
age_group(elderly, 3).

% Health Conditions
:- discontiguous(conditions/1).
:- discontiguous(conditions/2).

conditions(hypertension).
conditions(hypertension, 1).

conditions(diabetes).
conditions(diabetes, 2).

conditions(heart_disease).
conditions(heart_disease, 3).

conditions(lung_disease).
conditions(lung_disease, 4).

conditions(cancer).
conditions(cancer, 5).

% Assessment
:- discontiguous(assessment/1).
:- discontiguous(assessment/2).

assessment(low_risk).
assessment(low_risk, unlikely).

assessment(medium_risk).
assessment(medium_risk, likely).

assessment(high_risk).
assessment(high_risk, highly_likely).
