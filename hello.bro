event connection_established(c:connection){
	print fmt ("Sup Bro");
	print c; 
	print fmt ("---------------------------------------");
	print fmt ("Bro Layer 3 connection info: ");
	print fmt("uid: %s", c$uid);
	print fmt("source ip: %s", c$id$orig_h);
	print fmt("source port: %s", c$id$orig_p);
	print fmt("dest ip: %s", c$id$resp_h);
	print fmt("dest port: %s", c$id$resp_p);
	print fmt ("-------------------------------------- ");
}
