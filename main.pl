#!/usr/local/bin/perl

#Function Body

sub copy_commit_delete{
    $foo .= sprintf("%x", rand 64) for 1..8;
	for($index = 0; $index < 1 + int rand(4); $index++){
		system("touch $foo.txt");
		system("git add $foo.txt");
		system("git commit -m Cheesed...");
		system("git push");
	}
}

#Main Body
while(True){
	for($index = 0; $index < int(rand(4))+1; $index++){
		copy_commit_delete();
	}
	sleep(int(rand(43200))+43200);
}
