class ssstack:
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



def infix_to_postfix():
	infx=str(input('Enter the infix expression : '))
	print (infx)
	e=list(infx)
	print (e)
	print("Enter the values as 0|1 for the given operands\n")
	for i in range(len(e)):
		if e[i].isalpha():
			e[i]=input("Enter the value for " + e[i]+ "\n")
	#print (exp)
	print (e)	

	pr = {}
	pr["!"] = 4
	pr["."] = 3
	pr["+"] = 2
	pr["("] = 1
	pr["$"] = 0
	postfix_list=[]
	opstack=ssstack()
	for ch in e:
		if ch in "10" :
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
			opstack.push(ch)
		
	while not opstack.isEmpty():
		postfix_list.append(opstack.pop())
	Eval(postfix_list)
	return "".join(postfix_list)
	

def Eval(post_exp):
	nmosStack = ssstack()
	pmosStack = ssstack()
	e = list(post_exp)

	for ch in e:
		if ch in "10":
			nmosStack.push(ch)
			pmosStack.push(ch)
		else:
			#for_nmos
			result = nmosOper(ch,nmosStack)
			nmosStack.push(result)
            #for_pmos
			result = pmosOper(ch,pmosStack)
			pmosStack.push(result)

	global out_counter
	print("OUTPUT O" + str(out_counter) )

out_counter=0
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
		print("nmos ( GND, " + str(operand2) + ", X" + str(x_counter) + " )\t")
		if bool(operand2):
			print("ON\n")
		else:
			print("OFF\n")

		print("nmos ( X" +str(x_counter)+ " , " + str(operand1) +", Y" + str(y_counter)+ " )")
		if bool(operand1):
			print("ON\n")
		else:
			print("OFF\n")
		 # Inverted in(parallel)
		print("nmos ( GND, Y" + str(y_counter) + ", " + str(output) + " )" )
		#print(operand1)
		if (bool(operand2) & bool(operand1)):
			outputx=1
			print("ON\n")
		else:
			outputx=0
			print("OFF\n")			
    #nmos parallel connection
	elif op == "+":
		operand2=nmosStack.pop()
		operand1=nmosStack.pop()

		x_counter=x_counter+1
		y_counter=y_counter+1
		
		print("nmos ( GND, " + str(operand2) + ", Y" + str(y_counter) + " )" )
		if bool(operand2):
			print("ON\n")
		else:
			print("OFF\n")
		print("nmos ( GND, " + str(operand1) + ", Y" + str(y_counter) + " )" )
		if bool(operand1):
			print("ON\n")
		else:
			print("OFF\n")
        #inverted in (series)
		print("nmos ( GND, Y" + str(y_counter) + ", " + str(output) + " )" )
		if (bool(operand2)!=1 | bool(operand1)!=1):
			outputx=0
		else:
			outputx=1
		if bool(outputx):
			print("ON\n")
		else:
			print("OFF\n")
	else: # not case
		operand1 = nmosStack.pop()
		outputx=-1
		print("nmos ( GND, " + str(operand1) + ", " + str(output) + " )" )
		if bool(operand1):
			print("ON\n")
		else:
			print("OFF\n")
	return outputx

def pmosOper(op, pmosStack):
	global out_counter
	global x_counter
	global y_counter

	#out_counter=out_counter+1
	output= "O" +str(out_counter)

	if op==".":
		operand2=pmosStack.pop()
		operand1=pmosStack.pop()


		print("pmos ( VDD, " + str(operand2) + ", Y" + str(y_counter) + " )")
		if bool(operand2):
			print("OFF\n")
		else:
			print("ON\n")
			
		print("pmos ( VDD, " + str(operand1) + ", Y" + str(y_counter) + " )")
		if bool(operand1):
			print("OFF\n")
		else:
			print("ON\n")
		#Invert output
		print("pmos ( VDD, Y" + str(y_counter) + ", " + str(output) + " )" )
		if (bool(operand2) | bool(operand1)):
			outputx=1
		else:
			outputx=0
		if bool(outputx)!=1:
			print("ON\n")
		else:
			print("OFF\n")
	elif op == "+":
		operand2 = pmosStack.pop()
		operand1 = pmosStack.pop()

        # PMOS(S,G,D)
        # Series
		print("pmos ( VDD, " + str(operand2) + ", X" + str(x_counter) + " )" )
		if bool(operand2):
			print("OFF\n")
		else:
			print("ON\n")
		print("pmos ( X" + str(x_counter) + " , " + str(operand1) + ", Y" + str(y_counter) + " )" )
		if bool(operand1):
			print("OFF\n")
		else:
			print("ON\n")
        # Invert output
		print("pmos ( VDD, Y" + str(y_counter) + ", " + str(output) + " )" )
		if (bool(operand2)!=1 & bool(operand1)!=1):
			outputx=0
		else:
			outputx=1
		if bool(outputx):
			print("OFF\n")
		else:
			print("ON\n")
	else: # not case
		operand1 = pmosStack.pop()

        # Invert output
		print("pmos ( VDD, " + str(operand1) + ", " + str(output) + " )" )
		if bool(operand1):
			print("OFF\n")
		else:
			print("ON\n")
	return output

k=infix_to_postfix()
#printing the postfix form of the given input
print("POSTFIX expression: " + k)

ssstack=[]
for i in k:
	if i.isdigit():
		if int(i) is 1:
			ssstack.append(True)
		else:
			ssstack.append(False)
	elif i=='+':
		m=ssstack.pop()
		n=ssstack.pop()
		ssstack.append(m or n)
	elif i=='.':
		m=ssstack.pop()
		n=ssstack.pop()
		ssstack.append(m and n)
	elif i=='!':
		m=ssstack.pop()
		ssstack.append(not m)

if ssstack.pop():
	print ("1")
else:
	print("0")
