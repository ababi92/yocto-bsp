MACHINES="votp1 votp2 observer"
SSH_OPTIONS='-q -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

VOTP1_ADDR=192.168.217.131
VOTP2_ADDR=192.168.217.132
OBSERVER_ADDR=192.168.217.133
NTP_ADDR=192.168.217.134

# params: host command command_arg
run_ssh_command()
{
    host="$1"
    command="$2"
    args="$3"
    ip_addr="$(eval echo \${${host^^}_ADDR})"
    #echo "ssh $host $command $args"
    ssh ${SSH_OPTIONS} root@"$ip_addr" -- "$command" $args
}