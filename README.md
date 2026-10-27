
# CIRRHOSIS# Cirrhosis Patient Data – SQL Analysis

## Objective
A set of 20 SQL queries that explore a clinical cirrhosis dataset (`cirrhosis_data` table in the `Cirrhosis` database). The goal is to understand patient demographics, disease severity, treatment, survival status, and lab values using basic SQL: filtering, aggregation, grouping, pattern matching, and sorting.

## Dataset Columns Used
| Group | Columns |
|---|---|
| Patient / outcome | `ID`, `Age`, `Sex`, `Status` (C = censored, D = died), `N_Days` |
| Treatment | `Drug` (e.g. D-penicillamine) |
| Clinical signs | `Ascites`, `Hepatomegaly`, `Spiders`, `Edema` |
| Lab values | `Bilirubin`, `Cholesterol`, `Albumin`, `Platelets`, `Prothrombin`, `Tryglicerides` |
| Disease severity | `Stage` (histologic stage) |

## Analysis Covered
| Theme | Queries | What it answers |
|---|---|---|
| **Demographics** | 2, 7, 14 | Average age of males, patients per sex and stage, total male vs female counts |
| **Outcomes / survival** | 1, 8, 11, 19 | Censored and deceased patients, prothrombin time in patients who died, follow-up days |
| **Clinical signs** | 3, 6, 9, 16 | Patients with ascites, hepatomegaly, spiders, or edema, alone and in combination |
| **Lab values** | 4, 5, 10, 12, 13, 15 | Max and min bilirubin, platelets, and triglycerides; average cholesterol, albumin by stage, and platelets with vs without ascites |
| **Treatment** | 5, 17 | Cholesterol for D-penicillamine patients, patients on penicillamine-type drugs |
| **Sorting / ranking** | 18, 19, 20 | Patients ordered by age, follow-up time, and cholesterol |

## Key Results Noted in the File
- 147 censored patients and 111 deaths
- Highest bilirubin: 28
- Platelet range: 62 to 563
- Triglyceride range: 33 to 598
- Average cholesterol on D-penicillamine: about 366
- Sex split: 242 female and 34 male patients
- Average platelets: about 190 with ascites versus about 267 without, so lower platelets go with ascites
- 136 patients were on a penicillamine-based drug

## Example Query
```sql
-- Average platelets with and without ascites
SELECT Ascites, AVG(Platelets) AS avg_platelets
FROM cirrhosis_data
GROUP BY Ascites;
```

## Files
- `CIRRHOSIS.sql` – the full query script (run in MySQL after loading `cirrhosis_data`)
