#!/usr/bin/env bro

#watches to see if any ports not on our list create connections
#this means meoware or something bad.


event connection_established(c:connection){

	#list of allowed ports
	local good_ports: set[port];
	add good_ports[22/tcp];
	add good_ports[80/tcp];

	#if our connection is on a port that isn't approved, yell.
	if(c$id$resp_p !in good_ports){
		print fmt("[+] BAD PORT CONNECTION: %s, %s", c$id$resp_p, c$id$resp_h);
	}
}
