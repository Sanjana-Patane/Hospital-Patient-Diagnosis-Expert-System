/* ---------------------------------------------------------
   HOSPITAL PATIENT DIAGNOSIS EXPERT SYSTEM
   Practical Assignment 1.2
   --------------------------------------------------------- */


/* ================= KNOWLEDGE BASE ================= */

/* Diseases */

disease(fever).
disease(cold).
disease(flu).
disease(stomach_problem).
disease(sore_throat).


/* Symptoms */

symptom(fever, fever).
symptom(fever, headache).
symptom(fever, weakness).

symptom(cold, cough).
symptom(cold, sneezing).
symptom(cold, runny_nose).

symptom(flu, fever).
symptom(flu, cough).
symptom(flu, body_pain).

symptom(stomach_problem, stomach_pain).
symptom(stomach_problem, vomiting).
symptom(stomach_problem, nausea).

symptom(sore_throat, throat_pain).
symptom(sore_throat, cough).
symptom(sore_throat, swallowing_problem).


/* ================= RECOMMENDATIONS ================= */

recommendation(fever,
    'Take rest and drink enough water.').

recommendation(cold,
    'Take rest and drink warm fluids.').

recommendation(flu,
    'Take rest and drink enough fluids.').

recommendation(stomach_problem,
    'Drink enough fluids and take proper rest.').

recommendation(sore_throat,
    'Drink warm fluids and take proper rest.').


/* ================= PATIENT SYMPTOMS ================= */

:- dynamic patient_symptom/1.


/* ================= INFERENCE RULES ================= */

/* Fever */

diagnosis(fever) :-
    patient_symptom(fever),
    patient_symptom(headache),
    patient_symptom(weakness).


/* Cold */

diagnosis(cold) :-
    patient_symptom(cough),
    patient_symptom(sneezing),
    patient_symptom(runny_nose).


/* Flu */

diagnosis(flu) :-
    patient_symptom(fever),
    patient_symptom(cough),
    patient_symptom(body_pain).


/* Stomach Problem */

diagnosis(stomach_problem) :-
    patient_symptom(stomach_pain),
    patient_symptom(vomiting),
    patient_symptom(nausea).


/* Sore Throat */

diagnosis(sore_throat) :-
    patient_symptom(throat_pain),
    patient_symptom(cough),
    patient_symptom(swallowing_problem).


/* ================= ACTIONS ================= */

/* Add symptom */

add_symptom(Symptom) :-
    assertz(patient_symptom(Symptom)),
    format('Symptom recorded: ~w.~n', [Symptom]).


/* Clear symptoms */

clear_symptoms :-
    retractall(patient_symptom(_)).


/* ================= DISPLAY DIAGNOSIS ================= */

show_diagnosis :-
    diagnosis(Disease),
    recommendation(Disease, Advice),
    format('Possible Condition: ~w~n', [Disease]),
    format('Recommendation: ~w~n', [Advice]).


/* ================= START SYSTEM ================= */

start :-
    clear_symptoms,

    writeln('------------------------------------------'),
    writeln(' HOSPITAL PATIENT DIAGNOSIS EXPERT SYSTEM'),
    writeln('------------------------------------------'),

    writeln('Enter three symptoms.'),
    writeln(''),

    write('Enter first symptom: '),
    read(S1),
    add_symptom(S1),

    write('Enter second symptom: '),
    read(S2),
    add_symptom(S2),

    write('Enter third symptom: '),
    read(S3),
    add_symptom(S3),

    writeln(''),
    writeln('Analyzing patient symptoms...'),
    writeln(''),

    (
        show_diagnosis
        ->
        true
        ;
        writeln('No matching condition was found.')
    ).
