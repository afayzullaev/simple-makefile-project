TARGET := MyProject
CC := gcc

PREF_SRC := ./src
BUILD := ./build

SRC := ${wildcard ${PREF_SRC}/*.c}
OBJ := ${patsubst ${PREF_SRC}/%.c, ${BUILD}/%.o, ${SRC}}

${TARGET}: ${OBJ}
	${CC} ${OBJ} -o ${TARGET}

${BUILD}/%.o: ${PREF_SRC}/%.c
	${CC} -c $< -o $@ 

clean:
	rm ${TARGET} ${BUILD}/*.o

