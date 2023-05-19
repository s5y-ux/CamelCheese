#!/usr/local/bin/perl

#Function Body

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

sub copy_commit_delete{
	for($index = 0; $index < 1 + int rand(4); $index++){
		system("touch test.txt");
		system("git add test.txt");
		system("git commit -m Cheesed...");
		system("git push");
		system("git rm text.txt");
		system("rm test.txt");
	}
}
#Main Body

copy_commit_delete();
