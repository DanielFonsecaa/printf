/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putpoint.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dda-fons <dda-fons@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/30 14:26:15 by dda-fons          #+#    #+#             */
/*   Updated: 2025/04/30 14:26:19 by dda-fons         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putpoint(void *ptr)
{
	unsigned long	address;
	int				j;

	address = (unsigned long)ptr;
	j = 0;
	if (!ptr)
		return (ft_putstr("(nil)"));
	j += ft_putchar('0');
	j += ft_putchar('x');
	j += ft_puthex_small(address);
	return (j);
}
