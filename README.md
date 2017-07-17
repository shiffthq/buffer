## buffer
A buffer in C.

## APIs
### buffer_t *buffer_new(size_t size)
create a buffer with default `size`.

### void buffer_free(buffer_t *buf)
release memory used by `buf`

### buffer_t *buffer_reset(buffer_t *buf)
reset the `buf->used` to `0`

### buffer_t *buffer_concat(buffer_t *buf, const char *data, size_t len)
append `data` to buffer
