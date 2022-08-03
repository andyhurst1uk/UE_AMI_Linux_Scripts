###################################################
#
# LIST OF ALL TESTS TO BE RUN
#
# PROGRAM: amiTestList
#
# DESCRIPTION: If unhashed all tests will run.
#              networkDevices retrieves meters that
#              are active & can be pinged
#
###################################################

min=1
echo Waiting $min minutes before execution
sleep $(( 60 * $min ))  &    # sleep
sleep_pid=$!
wait  $sleep_pid

./networkDevices
./read_interval_data "25 Oct 2012" "26 Oct 2012"
./read_register_current
./timeSynch 25
./bytes_per_sec
./certs_bcast_get
./certs_HAN_get
./DNS_server_get
./external_antenna_get
./get_BBD_config
./legacy_port_get
./legacy_port_set
./meter_FW_image_get
./meter_FW_info_get
./meter_IHD_remove
./NIC_image_hidden_get
./NIC_image_list_get
./NID_get
./NID_set
./prom_mode_get
./sysvar_check
./time_meter_get
./time_NIC_get
./time_sync_across_interval_boundary
./time_sync_test

exit
