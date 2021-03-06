/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tsergien <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/03 17:08:23 by tsergien          #+#    #+#             */
/*   Updated: 2018/04/03 17:08:36 by tsergien         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_striter(char *s, void (*f)(char *))
{
	char	*p;

	p = s;
	if (!s || !f)
		return ;
	while (*p != '\0')
	{
		(*f)(p);
		p++;
	}
}
