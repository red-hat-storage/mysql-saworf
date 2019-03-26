These files were used during the comparison of 60 pods running GlusterFS vs GlusterBlock.
The scripts in this directory where tailor made for these specific tests and are in no way a framework for running any tests (though can be used to write some framework).

The run_the_test script use pssh, so make sure it is installed on the host you are running from.
Also make sure that you can ssh from the running host to the actual OCP worker nodes without password (or with a passkey).
in the current script, the variable "keyfile" point to the file used to authenticate (the passpharse is "redhat" as can seen from the "sshpass -predhat" at the beginning of each pssh line).

since i've also ran readonly and writeonly test, I've wrapped "run_the_test" in a script called "tests_to_run" that just run through all the tests

You need to place the gather_stats script in each of the working nodes in order to get OS statistics collection.

The export_to_csv script is a method to go over all the directories in a certain directory and create a CSV file from the sysbench outputs. Please read the script carefully as it is based on the tests I've done that include things like read and write only and different number of threads.
it is a superset of the "get_results" script which will just display latency and TPS average summary from a specific run_name.
