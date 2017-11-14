#!/usr/bin/perl

#URL = https://finance.google.com/finance/converter
#FINAL URL = https://finance.google.com/finance/converter?a=100&from=AUD&to=AED&meta=ei%3DNgoLWorrE5XQuwSq44SoAQ

use strict;
use warnings;

use LWP::Simple;

if( $#ARGV < 2 ){
    
    die "<$0> No arguments passed.\n";

}

my ($from_currency, $to_currency, $amount, $v) = @ARGV;

if(not defined $v) {

	$v = "no-verbose";

}

#my $page_content = "";

my $url = "https://finance.google.com/finance/converter";
my $final_url = "https://finance.google.com/finance/converter?a=%d&from=%s&to=%s&meta=%s";

if($v eq "verbose") {

	print "[+] Getting Content Of $url";

}

my $page_content = get($url);
my $meta = "";

if($page_content =~ m/\<input type=hidden name=meta value=([^\>]+)\>/g) {

	$meta = $1;

} else {

	die "No hidden meta tag found\n";

}

if($v eq "verbose") {

	print "PAGE_CONTENT is:\n";
	print "$page_content\n";

	print "META is: $meta\n";

}

$final_url = sprintf($final_url, $amount, $from_currency, $to_currency, $meta);

if($v eq "verbose") {

	print "[+] GETTING CURRENCY VALUE FROM: <$final_url>\n\n";

}

$page_content = get($final_url);

if($page_content =~ m/\<div id=currency_converter_result>([0-9.]+)[^\<]+\<span class=bld>([0-9.]+)[^\<]+\<\/span\>/g) {

	print "\n\n$1 $from_currency is $2 $to_currency\n\n";

} else {

	print "[-] REGEX NOT MATCHED OR ERROR OCCURED\n";
	print "PAGE_CONTENT is:\n";
	print "$page_content\n";

}
