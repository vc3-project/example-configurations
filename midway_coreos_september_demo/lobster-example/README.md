# Lobster workflow demo
This is the CMS LHE MC generation step used in production.

* The lobster master is run outside of the VC3 infrastructure
* WQ workers started at the VC3 headnode then talk to the master
* VC3 match and provides the actual resource targets for these workers.

There are 3 directories here:

* master - Included for reference on how the master is run
* headnode - The submit scripts used to start the workers on VC3
* APF\_queue - A reference queue for APF (arguments here should be generated automatically in the request)
