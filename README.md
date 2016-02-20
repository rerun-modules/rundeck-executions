
## Report Management Server
A rundeck server designated to manage executions history and provide reporting. 
Points to same DB and logstore as cluster.
Has required plugins to carry out tasks



## Purging old executions

print a report using filters

    rundeck-executions:query --some-filter blah --long false
    1
    2
    3
    4

archive executions ahead of deleting them. (probably want to save archive to a remote as well)

    rundeck-project:export --project anvils --execution-ids "1 2 3 4" --file anvils.zip

delete the executions

	rundeck-executions:delete --ids "1 2 3 4"    


