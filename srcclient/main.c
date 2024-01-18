/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mloureir <mloureir@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/26 15:09:09 by mloureir          #+#    #+#             */
/*   Updated: 2024/01/17 10:35:21 by mloureir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../minitalk.h"

void	sendbyte(int c, pid_t pid)
{
	int	bits;

	bits = 0;
	while (bits < 8)
	{
		if (c % 2 == 0)
			kill(pid, SIGUSR1);
		else
			kill(pid, SIGUSR2);
		c /= 2;
		bits++;
		usleep(150);
	}
}

void	passbytes(pid_t pid, char *str)
{
	int	i;

	i = 0;
	while (str[i])
	{
		sendbyte((unsigned char)str[i], pid);
		i++;
	}
}

int	main(int argc, char **argv)
{
	pid_t	pid;

	if (argc == 3)
	{
		pid = ft_atoi(argv[1]);
		passbytes(pid, argv[2]);
	}
	else
		ft_printf("ERROR!");
	return (0);
}
