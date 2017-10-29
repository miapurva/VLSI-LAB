#char s[SIZE];

class Stack:
	def push(element):
		top=top+1;
		s[top]=element


	def pop():
		return s[top]
		top=top-1


	def pr(ch):
		if ch=='$':
			return 0
		elif ch=='(':
			return 1
		elif ch=='+':
			return 2
		elif ch=='*':
			return 3
		elif '!':
			return 4

#char infx[SIZE],pofx[SIZE],ch,elem;
i=0
k=0
infx=str(input('Enter the infix expression: '))
e=list(infx)

def infix_to_postfix():
	postfix_list=[]
	opstack=Stack()
	opstack.push('$')
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
				postfix_list[k]=opstack.pop()	
		else:
			while pr(s[top])>=pr(ch):
				postfix_list[k]=opstack.pop()
				k=k+1
			opstack.push(ch)
		
	while elem!='$':
		postfix_list.append(opstack.pop())
		#return "".join(postfixList)
	#doubt(below line)
	postfix_list=postfix_list + '\0'
	print("postfix Expression :"+ str(postfix_list))

	
def postfixEval(postfixexp):
	nmosStack = Stack()
	pmosStack = Stack()
	e = list(postfixexp)

	for ch in e:
		if ch in "ABCDEFGHIJKLMNRSTUVWXYZabcdefghijklmnrstuvwxyz":
			nmosStack.push(ch)
			pmosStack.push(ch)
		else
			#nmos
			result = nmosOper(token,nmosStack)
            nmosStack.push(result)
            #pmos
            result = pmosOper(token,pmosStack)
            pmosStack.push(result)

    global out_ctr
    print("OUTPUT O" + str(out_ctr) )

out_ctr=0
p_counter=0
q_counter=0

def nmosOper():
	global out_ctr
	global p_counter
	global q_counter

	out_ctr=out_ctr+1
	output= "O" +str(out_ctr)

	if op=="*":
		operand2=nmosStack.pop()
		operand1=nmosStack.pop()

		p_counter=p_counter+1
		q_counter=q_counter+1
		print("NMOS (GND, " + str(operand2) + ", P" + str(p_counter) + " )")
		print("NMOS (P, " +str(p_counter)+ " ," + str(operand1) +", Q" + str(q_counter)+ " )")

		 # Inverted
        print("NMOS ( GND, Q" + str(q_ctr) + ", " + str(output) + " )" )
	elif op == "+":
		operand1=nmosStack.pop()
		operand2=nmosStack.pop()

		 p_ctr=p_ctr+1
        q_ctr=q_ctr+1
        print("NMOS ( GND, " + str(operand2) + ", Q" + str(q_ctr) + " )" )
        print("NMOS ( GND, " + str(operand1) + ", Q" + str(q_ctr) + " )" )

        #inverted
        print("NMOS ( GND, Q" + str(q_ctr) + ", " + str(output) + " )" )
    else: # not case
        operand1 = nmosStack.pop()

        # Invert output
        print("NMOS ( GND, " + str(operand1) + ", " + str(output) + " )" )
    return output

def pmosOper():
	
