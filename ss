#!/usr/bin/env perl
use strict;
use warnings;
use HTML::TagParser;
require HTTP::Request;
use LWP::UserAgent;
use open ':std', ':encoding(UTF-8)';

my $url = 'http://m.seslisozluk.com/?word=';
my $numArgs = $#ARGV + 1;

if ($numArgs > 0){
print "#################################### \n";

# Construct URL
$url = $url . $ARGV[0];
foreach my $argnum (1 .. $#ARGV) {
    $url = $url . "+$ARGV[$argnum]";
}

# Get contents
my $request = HTTP::Request->new(GET => $url);
my $ua = LWP::UserAgent->new;
my $response = $ua->request($request);

# Turkish to English
my $html = HTML::TagParser->new($response->decoded_content);
my @list1 = $html->getElementById('dc_tr_en');
foreach my $elem ( @list1 ) {
	if ($elem){
		print "TR - ENG \n";
		my $text = $elem->innerText;
		print $text . "\n";
	}
}

# English to Turkish
my @list2 = $html->getElementById('dc_en_tr');
foreach my $elem ( @list2 ) {
	if ($elem){
		print "ENG - TR \n";
		my $text = $elem->innerText;
		print $text . "\n";
	}
}

# Turkish to Turkish
my @list3 = $html->getElementById('dc_tr_tr');
foreach my $elem ( @list3 ) {
	if ($elem){
		print "TR - TR \n";
		my $text = $elem->innerText;
		print $text . "\n";
	}
}

# English to English
my @list4 = $html->getElementById('dc_tr_tr');
foreach my $elem ( @list4 ) {
	if ($elem){
		print "ENG - ENG \n";
		my $text = $elem->innerText;
		print $text . "\n";
	}
}
print "#################################### \n";
}
else{ print "No Arguments. \n"; }
