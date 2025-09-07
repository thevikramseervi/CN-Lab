BEGIN {
	drop = 0;
}
{
	if ($1 == "d") drop++;
}
END {
	printf("Total no of %s packets dropped due to congestion = %d\n", $5, drop);
}
