CREATE TABLE bc_data (
    sample_id INTEGER,
    clump_thickness INTEGER,
    uniformity_of_cell_size INTEGER,
    uniformity_of_cell_shape INTEGER,
    marginal_adhesion INTEGER,
    single_epithelial_cell_size INTEGER,
    bare_nuclei INTEGER,
    bland_chromatin INTEGER,
    normal_nucleoli INTEGER,
    mitoses INTEGER,
    class INTEGER
);
COPY bc_data FROM '/tmp/bcdata-clean.csv' DELIMITER ',' CSV; 
