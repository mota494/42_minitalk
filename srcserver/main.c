/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mloureir <mloureir@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/26 15:09:10 by mloureir          #+#    #+#             */
/*   Updated: 2023/12/28 10:33:14 by mloureir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../minitalk.h"

void printchar(int *byte)
{
	int i;
	unsigned char print;

	i = 7;
	print = 0;
	while(i >= 0)
	{
		print = print * 2 + byte[i--];
	}
	ft_printf("%c", print);
}

void printbyte(pid_t signal)
{
	static int bits;
	static int byte[8];

	if (signal == SIGUSR1)
		byte[bits++] = 0;
	else
		byte[bits++] = 1;
	if (bits == 8)
	{
		printchar(byte);
		bits = 0;
	}
}

int main(void)
{
	pid_t pid;

	pid = fork();
	if (pid != 0)
		ft_printf("Your session PID: %i\n", pid);
	while (1)
	{
		signal(SIGUSR1, printbyte);
		signal(SIGUSR2, printbyte);
	}
	return (0);
}
