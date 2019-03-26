These files were used during the comparison of 60 pods running GlusterFS vs GlusterBlock.

The scripts use pssh, so make sure it is installed on the host you are running from.
Also make sure that you can ssh from the running host to the actual OCP worker nodes without password (or with a passkey).
in the current script, the variable "keyfile" point to the file used to authenticate (the passpharse is "redhat" as can seen from the "sshpass -predhat" at the beginning of each pssh line).


You need to place the gather_stats script in each of the working nodes in order to get OS statistics collection.
