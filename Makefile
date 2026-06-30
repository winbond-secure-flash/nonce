# Compiler and flags
CC       = gcc
CFLAGS   = -Wall -Wextra -O2
LDFLAGS  =

# Target executable name
TARGET   = test

# Source files and corresponding object files
SRCS     = main.c sample_nonce.c
OBJS     = $(SRCS:.c=.o)

# Default rule (first rule is run by default)
all: $(TARGET)

# Link object files to create the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS)

# Compile source files to object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up build artifacts
clean:
	rm -f $(OBJS) $(TARGET)

# Phony targets to prevent conflicts with files named 'all' or 'clean'
.PHONY: all clean
