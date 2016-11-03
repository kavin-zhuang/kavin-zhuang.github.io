#!/usr/bin/perl

use FindBin;
use Encode;
use Encode::CN;

my $path = ".";

opendir(DIR, "$path") || die "Cannot open dir : $!";
my @files = readdir(DIR);
foreach my $file (@files) {
   if(-f "$path/$file") {
        #print $file."\n";
        
        #system("perl -e \"s/MarkdownPad Document/Jinfeng/gi\" ");
        
        $pos = index($file, ".html");
        if($pos > 0) {
             system("perl -p -e \"s/MarkdownPad Document/Jinfeng/gi\" $file");
        }
    }
}
closedir(DIR);