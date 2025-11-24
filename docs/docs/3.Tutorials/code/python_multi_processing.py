from multiprocessing import Process 
import os 
def foo():
	print('Checking in from parent process: ', os.getppid(), " process id: ", os.getpid() )


def main():
	processes = [Process(target = foo) for i in range(4)]

	for p in processes:
		p.start()
	for p in processes:
		p.join()



main()