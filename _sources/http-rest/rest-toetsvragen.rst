Toetsvragen
-----------

.. bij REST APIs


.. mchoice:: http-mc-21
   :answer_a: GET
   :answer_b: POST
   :answer_c: PUT
   :answer_d: HEAD
   :answer_e: DELETE
   :correct: a,d
   :feedback_a: OK. Met GET haal je het document bij de gegeven URL op
   :feedback_b: Met POST stuur je een ingevuld formulier naar de server
   :feedback_c: Met PUT stuur je een document naar de server
   :feedback_d: OK. Met HEAD haal je de headers op van de gegeven URL
   :feedback_e: DELETE verwijdert een element (resource) van de server

   Welke van deze methods halen gegevens van de server?

..

.. mchoice:: http-mc-22
   :answer_a: GET
   :answer_b: POST
   :answer_c: PUT
   :answer_d: HEAD
   :answer_e: DELETE
   :correct: a,c,d,e
   :feedback_a: OK.
   :feedback_b: POST is niet noodzakelijk idempotent (zie de definitie).
   :feedback_c: OK.
   :feedback_d: OK.
   :feedback_e: OK.

   Welke van deze methods zijn *idempotent*?
