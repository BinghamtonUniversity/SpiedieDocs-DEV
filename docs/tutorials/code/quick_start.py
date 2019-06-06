import random 
import time 

def rand(start, end, length):
    ret = []
    for i in range(length):
        ret.append(random.randint(start,end))
    return ret

def main():

    start_time = time.clock()
    for i in range (100):
        unsorted_list = rand(0,100000,1000)
        sorted_list = unsorted_list.sort()

    end_time = time.clock()
    print("Welcome to Spiedie!")
    print("You are running the quick start python tutorial.")
    print ("Soritng done")
    print(" I ran for " + str(end_time-start_time) + " s")

main()
