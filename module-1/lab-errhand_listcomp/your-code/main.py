#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 

import math
import random
import sys
import os
import os.path
import re
import itertools 

#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

square=[x**2 for x in range(20)]
print(square)


#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

power_of_two=[2**n for n in range(50)]
print (power_of_two)



#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results
sqrt=[math.sqrt(n) for n in range(100)]
print (sqrt)



#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

my_list=[n for n in range(-10,1)]
print(my_list)

#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

odds=[n for n in range(1,101) if n%2!=0]
print(odds)


#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisible_by_seven=[n for n in range(1,1000) if n%7==0 and n!=0]
print(divisible_by_seven)


#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

teststring = 'Find all of the words in a string that are monosyllabic'
vowels= ['a','e','i','o','u']
non_vowels=[n for n in teststring if n not in vowels]
consonants=''.join(non_vowels).replace(",", "")
consonants



#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results
sentence='The Quick Brown Fox Jumped Over The Lazy Dog'
capital_letters = "".join(n for n in sentence if n.isupper() and n.isspace()==False).replace(",", "")
print(capital_letters)
#capital_letters_get = ''.join(capital_letters).replace(",", "")
#print(capital_letters_get)

#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

sentence='The Quick Brown Fox Jumped Over The Lazy Dog'
consonants = "".join(n for n in sentence if n not in 'aeiou').replace(",", "")
#consonants = [n for n in sentence if n not in 'aeiou']
#print(set(consonants))
print(consonants)

#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

#files=[f for f in os.listdir(path="~/datamad0820")]




#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results
random_lists=[ n for n in random.sample(range(100),10 ) for x in range(4) ]
print(random_lists)



#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]
flatten_list=[ y for x in list_of_lists for y in x]
print(flatten_list) 

"""
#otra forma de hacer un flatten
list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]
chain = itertools.chain(*list_of_lists)   #flatten= [chain(f) for f in list_of_lists] #esto no funciona, revisar más tarde
print(list(chain))

"""




#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], 
\
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

floats=[float(n) for f in list_of_lists for n in f]
print (floats)



#14. Handle the exception thrown by the code below by using try and except blocks. 


for i in ['a','b','c']:
    try:
        print(i**2)
    except Exception:
        print("Error:No puede ser un string")

#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 

x = 5
y = 0

try:
    z = x/y
except ZeroDivisionError:
    print('Error: No se puede dividir por 0')    
print('All Done.')



#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

abc=[10,20,20]
try:
    print(abc[3])
except IndexError:
    print('Error: la lista no tiene el valor en este index')

#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 
a=input("Ingrese el número que desea dividir:")
b=input("Ingrese el número que desea dividir por:")
try: 
    print(a/b)
except: 
    if ZeroDivisionError:
        print("Error: no se puede dividir por cero")
    elif TypeError:
        print("Error: ambos números deben ser enteros o flotantes")



#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

try:
    f = open('testfile','r')
    f.write('Test aqui')
except FileNotFoundError:
    print('Error: no ha encontrado el fichero')



#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int

try:
    f = open('testfile','r')
    f.write('Test write this')
except FileNotFoundError:
    print('Error: no ha encontrado el fichero')


#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

def linux_interaction():
    assert ('linux' in sys.platform), "Function can only run on Linux systems."
    print('Doing something.')
try:
    linux_interaction()
except NameError:
    print('Error: necesita importar sys')


# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.

def square(n):
    print(n**2)

while True:
    try:
        n=int(input("inserta un numero para obtener el cuadrado:"))
        square(n)
        break
    except ValueError:
        print('Error: los datos no se pueden convertir en int') 



# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 

result = list(set([x for x in range(1000) for y in range(2,10) if x%y == 0]))
result.append(1)
print(sorted(result))



# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

while True:
    try:
        Total_Marks = int(input("Enter Total Marks Scored: ")) 
        Num_of_Sections = int(input("Enter Num of Sections: "))
        if Num_of_Sections < 2:
            raise Exception('no puede poner un valor debajo del 2')
        else:
            break
    except ValueError:
        print('Error: los datos no se pueden convertir en int') 


