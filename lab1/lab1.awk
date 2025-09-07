BEGIN {
	cbrPkt = 0;
       	tcpPkt = 0;
}
{
	if (($1 == "d") && ($5 == "cbr")) {
		cbrPkt++;
	}
	if (($1 == "d") && ($5 == "tcp")) {
		tcpPkt++;
	}
}
END {
	printf("\nNo of CBR packets dropped %d", cbrPkt);
	printf("\nNo of TCP packets dropped %d", tcpPkt);
}
