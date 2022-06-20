#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>

/**
 * main - Entry point
 * Return: 0
 */
int main(void)
{
	int i;
	pid_t pid = 0;

	for (i = 0; i < 5; i++)
	{
		pid = fork();
		if (pid == -1)
			perror("fork failed\n");
		else if (pid == 0)
			exit(0);
		else
		{
			sleep(1);
			printf("Zombie process created, PID: %d\n", pid);
		}
	}
	while (1)
		sleep(1);
	return (0);
}
