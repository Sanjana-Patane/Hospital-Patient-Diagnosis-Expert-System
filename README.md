# Hospital Patient Diagnosis Expert System

## Practical Assignment 1.2

### Problem Statement

Develop Expert System by creating knowledge base of facts and rules for specialized knowledge domain of your choice.

## Selected Domain

Hospital Patient Diagnosis

## Introduction

This project implements a simple rule-based Expert System using Prolog. The system accepts three symptoms from the user and uses predefined facts and rules to identify a possible condition.

## Objectives

1. To understand the concept of an Expert System.
2. To create a knowledge base using facts and rules.
3. To implement an inference mechanism for identifying a possible condition based on symptoms.

## Conditions Covered

The system contains rules for:

- Fever
- Cold
- Flu
- Stomach Problem
- Sore Throat

## Technology Used

- Prolog
- SWI-Prolog

## Important Concepts

The following concepts are used:

- Knowledge Base
- Facts
- Rules
- Inference Engine
- Rule-Based Reasoning
- Pattern Matching
- Expert System

## How the System Works

1. The user starts the Expert System.
2. The system asks the user to enter three symptoms.
3. The symptoms are stored as patient facts.
4. The inference engine compares the symptoms with predefined rules.
5. If a rule matches, the system displays the possible condition.
6. The system also displays a recommendation.
7. If no rule matches, the system displays that no matching condition was found.

## How to Run

1. Install and open SWI-Prolog.
2. Open or load `hospital_diagnosis.pl`.
3. Run the following query:

start.

4. Enter three symptoms when prompted.

## Sample Input

fever.
cough.
body_pain.

## Sample Output

Possible Condition: flu

Recommendation: Take rest and drink enough fluids.

## Result

The Hospital Patient Diagnosis Expert System successfully matches the symptoms entered by the user with predefined rules and displays a possible condition and recommendation.

## Conclusion

The Hospital Patient Diagnosis Expert System was successfully developed using Prolog. It demonstrates how a knowledge base, facts, rules, and an inference engine can be used to solve a problem in a specialized domain. Through this practical, the basic working of a rule-based Expert System and logical reasoning was understood.
