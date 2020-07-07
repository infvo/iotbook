Test
====

.. activecode:: sql1
    :language: sql
    :autograde: unittest
    :dburl: /_static/test.db

    select * from test;

    =====
    assert 1,1 == world
    assert 0,1 == hello
    assert 2,1 == 42

.. activecode:: sql2
    :language: sql
    :autograde: unittest
    :dburl: /_static/test.db

    select * from test;


.. activecode:: sql3
    :language: sql

    CREATE TABLE contacts (
      contact_id INTEGER PRIMARY KEY,
      first_name TEXT NOT NULL,
      last_name TEXT NOT NULL,
      email TEXT NOT NULL UNIQUE,
      phone TEXT NOT NULL UNIQUE
    );

.. activecode:: sql4
    :language: sql

    select * from contacts;
