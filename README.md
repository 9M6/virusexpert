# Virus Expert
Expert Systems are intelligent systems that represent specific domain knowledge in terms of logical rules. Usually, an expert system comprises an inference engine, a database and a knowledge base. (Negnevitsky, 2011)

In this class, we have been assigned to work on building a small Expert System using ProLog as an environment. The task was to identify if a user has been infected by an unknown virus, given their symptoms and other patient information. In this report, I’ll review the system I have built and showcase several use-cases.

## Expert System
The expert system is built on ProLog and uses the terminal as an interface to communicate with the program. The system is made up of Facts, which are recorded in the ProLog database, the Knowledge Base, which are rules that join together specific facts in the database, and the dialogues, that act as an interface between the user and the system.

## Facts
The facts are one of the core parts of an expert system; the Expert records the system information that the system will use to create predicates in the knowledge base. For our case, we’re building a virus detection expert system and given our task, I focused on extracting all the information I could from the task description.

From our task, I managed to extract the type of transmissions, resilence of the virus, exposure to the virus, symptoms, and severity; age group, condition of the user, and gender also played a role in the infected patient, given that if a person was elderly, severe symptoms were more common.

## Knowledge Base
The knowledge base is another important part of the Expert System; here are the predicate rules that use the system's facts to create relationships between the facts. For example, on predicate rule that I built was to assess, given exposure time and symptoms, if the patient would be infected or not.

Another rule in the system is the risk assessment and the high_risk assessment; these predicates check if the user has risks given their symptoms and if a patient is in the high_risk group, where it detects if the user is within a specific group age and if it has particular health conditions.

Finally, there is the last predicate assess, which assigns a specific risk level depending on the user's particular details, such as age, symptoms, exposure, gender, and so on.
