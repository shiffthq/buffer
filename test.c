#include <stdio.h>
#include "buffer.h"

int main() {
    buffer_t *buffer = buffer_new(5);

    buffer_concat(buffer, "hello", 5);
    printf("capacity: %zu/5, used: %zu/5, data: %s\n", buffer->capacity, buffer->used, buffer->data);

    buffer_concat(buffer, "world", 6);
    printf("capacity: %zu/22, used: %zu/11, data: %s\n", buffer->capacity, buffer->used, buffer->data);

    buffer_reset(buffer);
    printf("capacity: %zu, used: %zu\n", buffer->capacity, buffer->used);

    buffer_free(buffer);

    return 0;
}
