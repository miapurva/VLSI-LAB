#POSTFIX EVALUATION


def push(ele):
	top=top+1
	stack[top]=ele

def pop():
	#int temp
	temp=stack[top]
	top=top-1
	return[temp]
	#free(temp);


i=0
e=[]

#I have a problem in taking the input 
#eg. 8*9+3
#i want the list to be e=['8','*','9','+','3']
#but it gets evaluated to 75 and prints the list

key = str(input('Enter expression: '))
e=list(key);
#e.append(key)
print(e)
top=-1
while (e[i]!='$') :
	if e[i].isalpha:
		push(e[i])
	else:
		op=e[i]
		y=pop()
		x=pop()

		if op=='+':
			temp=x+y
			
		elif op=='*': 
			temp=x*y

		push(temp)
		i=i+1
		
print ("Result:" + str(pop()))
