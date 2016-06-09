# SumoHttpUploader #
#### Uploads log files to SumoLogic via a HTTP Collector ####

This script will upload all .gz or .log files found in the folder logs to a SumoLogic HTTP collector.
To configure you must specify the SUMOLOGIC_HTTP_COLLECTOR_ENDPOINT and HTTP_COLLECTOR_CODE constants in the constants.rb file

Before running the scipt place the .log or .gz log files in the logs directory e.g logs/file1.log, logs/file2.gz
To run the script run "ruby main.rb"
