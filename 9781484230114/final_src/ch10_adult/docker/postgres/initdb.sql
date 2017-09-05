CREATE TABLE adult (
    age INTEGER,
    workclass TEXT,
    fnlwgt INTEGER,
    education TEXT,
    education_num INTEGER,
    marital_status TEXT,
    occupation TEXT,
    relationship TEXT,
    race TEXT,
    gender TEXT,
    capital_gain INTEGER,
    capital_loss INTEGER,
    hours_per_week INTEGER,
    native_country TEXT,
    income_label TEXT
);
COPY adult FROM '/tmp/adult-clean.csv' DELIMITER ',' CSV; 

