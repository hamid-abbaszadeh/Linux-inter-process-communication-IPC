all: sysv posix
clean: sysv_clean posix_clean

sysv: \
sysv_shared_memory_private \
shmfile \
sysv_shared_memory_file_parent \
sysv_shared_memory_file_child \
semfile \
sysv_semaphore_file_parent \
sysv_semaphore_file_child \
msgfile \
sysv_message_queue_file_parent \
sysv_message_queue_file_child

sysv_shared_memory_private: sysv_shared_memory_private.c
	gcc -o sysv_shared_memory_private sysv_shared_memory_private.c

shmfile:
	touch shmfile

sysv_shared_memory_file_parent: sysv_shared_memory_file_parent.c
	gcc -o sysv_shared_memory_file_parent sysv_shared_memory_file_parent.c

sysv_shared_memory_file_child: sysv_shared_memory_file_child.c
	gcc -o sysv_shared_memory_file_child sysv_shared_memory_file_child.c

semfile:
	touch semfile

sysv_semaphore_file_parent: sysv_semaphore_file_parent.c
	gcc -o sysv_semaphore_file_parent sysv_semaphore_file_parent.c

sysv_semaphore_file_child: sysv_semaphore_file_child.c
	gcc -o sysv_semaphore_file_child sysv_semaphore_file_child.c

msgfile:
	touch msgfile

sysv_message_queue_file_parent: sysv_message_queue_file_parent.c
	gcc -o sysv_message_queue_file_parent sysv_message_queue_file_parent.c

sysv_message_queue_file_child: sysv_message_queue_file_child.c
	gcc -o sysv_message_queue_file_child sysv_message_queue_file_child.c

sysv_clean:
	rm -f sysv_shared_memory_private
	rm -f shmfile
	rm -f sysv_shared_memory_file_parent
	rm -f sysv_shared_memory_file_child
	rm -f semfile
	rm -f sysv_semaphore_file_parent
	rm -f sysv_semaphore_file_child
	rm -f msgfile
	rm -f sysv_message_queue_file_parent
	rm -f sysv_message_queue_file_child

posix: \
posix_shared_memory_parent \
posix_shared_memory_child \
posix_semaphore_parent \
posix_semaphore_child \
posix_message_queue_parent \
posix_message_queue_child

posix_shared_memory_parent: posix_shared_memory_parent.c
	gcc -lrt -o posix_shared_memory_parent posix_shared_memory_parent.c

posix_shared_memory_child: posix_shared_memory_child.c
	gcc -lrt -o posix_shared_memory_child posix_shared_memory_child.c

posix_semaphore_parent: posix_semaphore_parent.c
	gcc -pthread -o posix_semaphore_parent posix_semaphore_parent.c

posix_semaphore_child: posix_semaphore_child.c
	gcc -pthread -o posix_semaphore_child posix_semaphore_child.c

posix_message_queue_parent: posix_message_queue_parent.c
	gcc -lrt -o posix_message_queue_parent posix_message_queue_parent.c

posix_message_queue_child: posix_message_queue_child.c
	gcc -lrt -o posix_message_queue_child posix_message_queue_child.c

posix_clean:
	rm -f posix_shared_memory_parent
	rm -f posix_shared_memory_child
	rm -f posix_semaphore_parent
	rm -f posix_semaphore_child
	rm -f posix_message_queue_parent
	rm -f posix_message_queue_child
