# Lobster workers - VC3 headnode side

This is how workers are started for the lobster master.
Using the same version of cctools for lobster that is used at ND.

1) untar cctools-lobster-148.tar.gz
untar xfz cctools-lobster-148.tar.gz

2) To start workers:
```
./run.sh lobster_master_name number_of_jobs

E.g:
./run.sh lobster_khurtado_mc_v5 20
```

if `run.sh` is run without arguments, `lobster_khurtado_mc_v5` and `20` are used by default.
