# Enter your code here. Read input from STDIN. Print output to STDOUT
#creating a class book
class Book:
    def __init__(self,bookId,bookName,bookTechnology,bookPrice,authorname):
        self.bookId=bookId
        self.bookName=bookName
        self.bookTechnology=bookTechnology
        self.bookPrice=bookPrice
        self.authorname=authorname
#creating a class book store
class BookStore:
    def __init__(self,d,e):
        self.d=d
        self.e=e
        #creatig a method
    def searchByName(self,a):
        w=[]
        for v,g in self.d.items():
            if g.bookName==a:
                w.append(g)
        return w
    #creating a method
    def calculatePriceByTechnology(self,b):
        z=0
        for v,g in self.d.items():
            if g.bookTechnology==b:
                z=z+g.bookPrice
        z=z*0.9
        return z
count=int(input())
s={}
#for loop
for _ in range(count):
    bookId=int(input())
    bookName=input()
    bookTechnology=input()
    bookPrice=int(input())
    authorname=input()
    B=Book(bookId,bookName,bookTechnology,bookPrice,authorname)
    s[bookId]=B
BS=BookStore(s,'Janakiram store')
x=input()
y=input()
h=BS.searchByName(x)
s=BS.calculatePriceByTechnology(y)
if len(h)==0:
    print("No Book Exists with the BookName")
else:
    for r in h:
        print(r.bookId)
        print(r.bookName)
        print(r.bookTechnology)
        print(r.bookPrice)
        print(r.authorname)
if s==0:
    print("0.0")
else:
    print(s)