use Test::More tests => 4;

ok(1);

#use ExtUtils::testlib;
use Algorithm::HITS;

ok($h = new Algorithm::HITS);
$h->graph(
	  [
	   0 => 1,
	   0 => 2,
	   
	   1 => 0,
	   1 => 2,
	   
	   2 => 1,
	   ]
	  );

ok($h->iterate(2));
ok($h->result());
