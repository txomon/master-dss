#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(){

	int fd,x;
	char c=0xff;
	fd = open("test.sha256", O_WRONLY);
	for(x=0;x<64;x++)
	write(fd, &c, 1);
	return 0;
	
}
