#!/usr/local/bin/perl

#Function Body

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
while(True){
	sleep(int(rand(43200))+43200);
	for($index = 0; $index < int(rand(4))+1; $index++){
		copy_commit_delete();
	}
}
