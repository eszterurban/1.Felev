A = [3,5,7,1,8]
B = []

def legnagyobb(L):
	ln = L[0]
	for i in range(1,len(L)):
		if L[i] > ln:
			ln = L[i]
	print(ln)
	
def legkisebb(L):
	lk = L[0]
	for i in range(1, len(L)):
		if L[i] < lk:
			lk = L[i]
	print(lk)

//változócsere 1.
	
a = 2
b = 4 
c = a 
a = b 
b = c

változócsere 2.

a = 4
b = 2
b = a+b
a = b-a
b = b-a

def ossz(L):
	osszeg = 0
	for i in range(0,len(L)):
		osszeg = osszeg + L[i]
	print(osszeg)
	
def sztanikozep(L):
	osszeg = 0
	for i in range(0,len(L)):
		osszeg = osszeg + L[i]
		atlag = osszeg / len(L)
	print(float(atlag))
	
def szorz(L):
	szorzat = 1
	for i in range(0,len(L)):
		szorzat = szorzat * L[i]
	print(szorzat)	
	
def euklideszi():
    a = int(input('Az első szám: '))
    b = int(input('A második szám: '))
    r = 1
    while(r > 0 ):
        r = a % b 
        a = b 
        b = r 
    print(a)
	
def buborekRendezes(L):
    for i in range(len(L)):
        for j in range(len(L)-1):
            if L[j] > L[j+1]:
                t = L[j]
                L[j] = L[j+1]
                L[j+1] = t
    print(L)
