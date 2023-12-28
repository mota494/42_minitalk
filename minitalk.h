/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mloureir <mloureir@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/26 12:30:52 by mloureir          #+#    #+#             */
/*   Updated: 2023/12/28 12:32:13 by mloureir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
#define MINITALK_H

# include "include/ft_printf/ft_printf.h"
# include "include/libft/libft.h"
# include <signal.h>
# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>

void	printchar(int *byte);
void	printbyte(int signal);
void	passbytes(pid_t pid, char *str);
void	sendbyte(int c, pid_t pid);

#endif
