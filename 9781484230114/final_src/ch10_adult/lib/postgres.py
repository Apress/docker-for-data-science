"""Helper module for interfacing with PostgreSQL."""
import psycopg2 as pg2

def connect_to_postgres():
    """Preconfigured to connect to PostgreSQL. Returns connection and cursor. 
    
    con, cur = connect_to_postgres()
    """
    con = pg2.connect(host='this_postgres', user='postgres', database='postgres')
    return con, con.cursor()

def encode_target(_id):
    """Encode the target for a single row as a boolean value. Takes a row _id."""
    con, cur = connect_to_postgres()
    cur.execute("""SELECT _id, income_label FROM adult where _id = {}""".format(_id)) 
    this_id, income_label = cur.fetchone()
    assert this_id == _id

    greater_than_50k = (income_label == ' >50K')

    cur.execute("""
        BEGIN;
        UPDATE adult 
        SET target = {} 
        WHERE _id = {};
        COMMIT;
    """.format(greater_than_50k, _id)) 

    con.close()