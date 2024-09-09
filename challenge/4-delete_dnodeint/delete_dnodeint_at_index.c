#include "lists.h"
#include <stdlib.h>

/**
 * delete_dnodeint_at_index - Delete a node at a specific index from a list
 *
 * @head: A pointer to the first element of a list
 * @index: The index of the node to delete
 *
 * Return: 1 on success, -1 on failure
 */
int delete_dnodeint_at_index(dlistint_t **head, unsigned int index)
{
    dlistint_t *temp = *head;
    unsigned int i = 0;

    if (*head == NULL)
        return (-1);

    /* Traverse to the node at the given index */
    while (temp != NULL && i < index)
    {
        temp = temp->next;
        i++;
    }

    /* If index is out of range */
    if (temp == NULL)
        return (-1);

    /* If node to delete is the head node */
    if (temp == *head)
    {
        *head = temp->next;
        if (*head != NULL)
            (*head)->prev = NULL;
    }
    else
    {
        if (temp->prev != NULL)
            temp->prev->next = temp->next;
        if (temp->next != NULL)
            temp->next->prev = temp->prev;
    }

    free(temp);
    return (1);
}
