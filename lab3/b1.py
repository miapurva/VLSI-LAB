class Stack:
     def __init__(self):
         self.items = []

     def isEmpty(self):
         return self.items == []

     def push(self, item):
         self.items.append(item)

     def pop(self):
         return self.items.pop()

     def peek(self):
         return self.items[len(self.items)-1]

     def size(self):
         return len(self.items)


#print (e)
def infix_to_postfix():
	
	infx=str(input('Enter the infix expression : '))
	exp=list(infx)
	e=[]
	print("Enter the values as 0|1 for the given operands\n")
	for i in range(len(exp)):
		if exp[i].isalpha():
			#the below first line is correct change the "c"
			e=input("Enter the value for " + exp[i]+ "\n")
	print (e)		#i=input(e[i])

	pr = {}
	pr["!"] = 4
	pr["."] = 3
	pr["+"] = 2
	pr["("] = 1
	pr["$"] = 0
	postfix_list=[]
	#opstack:object
	opstack=Stack()
	#opstack.push('$')
	for ch in e:
	#while((ch=e[i])!='\0')
		if ch in "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz" :
			postfix_list.append(ch)
		elif ch=='(':
			opstack.push(ch)
		elif ch==')':
			elem=opstack.pop()
			while elem!='(':
				postfix_list.append(elem)
				elem=opstack.pop()	
		else:
			while (not opstack.isEmpty()) and (pr[opstack.peek()]>=pr[ch]):
				postfix_list.append(opstack.pop())
				#k=k+1
			opstack.push(ch)
		
	while not opstack.isEmpty():
		postfix_list.append(opstack.pop())
	Eval(postfix_list)
	return "".join(postfix_list)
	

def Eval(postfixexp):
	nmosStack = Stack()
	pmosStack = Stack()
	e = list(postfixexp)

	for ch in e:
		if ch in "ABCDEFGHIJKLMNRSTUVWXYZabcdefghijklmnrstuvwxyz":
			nmosStack.push(ch)
			pmosStack.push(ch)
		else:
			#nmos
			result = nmosOper(ch,nmosStack)
			nmosStack.push(result)
            #pmos
			result = pmosOper(ch,pmosStack)
			pmosStack.push(result)

	global out_counter
	print("OUTPUT O" + str(out_counter) )


out_counter=0
#input counters
x_counter=0
y_counter=0

def nmosOper(op, nmosStack):
	global out_counter
	global x_counter
	global y_counter

	out_counter=out_counter+1
	output= "O" +str(out_counter)

	#nmos series connection
	if op==".":
		operand2=nmosStack.pop()
		operand1=nmosStack.pop()

		x_counter=x_counter+1
		y_counter=y_counter+1
		'''k=0
		if bool(k):
			print("abc")'''
		#if bool(operand2):

		print("nmos -----> GND, " + str(operand2) + ", X" + str(x_counter) + " )------>")
		print("nmos -----> X" +str(x_counter)+ " , " + str(operand1) +", Y" + str(y_counter)+ " )-------")

		 # Inverted in(parallel)
		print("nmos -----> GND, Y" + str(y_counter) + ", " + str(output) + " )------->" )

    #nmos parallel connection
	elif op == "+":
		operand2=nmosStack.pop()
		operand1=nmosStack.pop()

		x_counter=x_counter+1
		y_counter=y_counter+1
		print("nmos -----> GND, " + str(operand2) + ", Y" + str(y_counter) + " )------->" )
		print("nmos -----> GND, " + str(operand1) + ", Y" + str(y_counter) + " )-------->" )

        #inverted in (series)
		print("nmos -----> GND, Y" + str(y_counter) + ", " + str(output) + " )--------->" )
	else: # not case
		operand1 = nmosStack.pop()

        # Invert output
		print("nmos ----> GND, " + str(operand1) + ", " + str(output) + " )--------->" )
	return output

def pmosOper(op, pmosStack):
	global out_counter
	global x_counter
	global y_counter

	#out_counter=out_counter+1
	output= "O" +str(out_counter)

	if op==".":
		operand2=pmosStack.pop()
		operand1=pmosStack.pop()


		print("pmos -----> VDD, " + str(operand2) + ", Y" + str(y_counter) + " )-------->")
		print("pmos -----> VDD, " + str(operand1) + ", Y" + str(y_counter) + " )-------->")

		#Invert output
		print("pmos -----> VDD, Y" + str(y_counter) + ", " + str(output) + " )-------->" )
	elif op == "+":
		operand2 = pmosStack.pop()
		operand1 = pmosStack.pop()

        # PMOS(S,G,D)
        # Series
		print("pmos -----> VDD, " + str(operand2) + ", X" + str(x_counter) + " )-------->" )
		print("pmos -----> X" + str(x_counter) + " , " + str(operand1) + ", Y" + str(y_counter) + " )------" )

        # Invert output
		print("pmos -----> VDD, Y" + str(y_counter) + ", " + str(output) + " )------->" )
	else: # not case
		operand1 = pmosStack.pop()

        # Invert output
		print("pmos -----> VDD, " + str(operand1) + ", " + str(output) + " )-------->" )
	return output

k=infix_to_postfix()
print(k)
#Eval('AB+!C.')
	
