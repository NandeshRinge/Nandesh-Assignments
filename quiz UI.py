import quiz_database as qd

while True:
   print()
   print("Let's Start the Quiz!!")
   sum=0

   for i in range(1,12):
        
        if i==1:
            question=print("How many States and Union Territories does India have?")
            print('''
            A.29 States and 7 Union Territories       B.28 States and 9 Union Territories
            C.28 States and 7 Union Territories       D.29 States and 9 Union Territories
            ''')
            answer=str(input("Your answer: "))
            if answer=="28 States and 9 Union Territories".casefold():
                print('Correct')
                sum+=1
            else:
              print("Wrong answer")
    
        if i==2:
            question=print('What is the capital of India?')
            print('''
            A. New Delhi         B. Lucknow
            C. Mumbai            D. Noida
            ''')
            answer=str(input("Your answer: "))
            if answer=="New Delhi".casefold():
                print('Correct')
                sum+=1
            else:
               print("Wrong answer")

        if i==3:
           question=print("Which is the smallest state of India according to area?")
           print(''' 
           A.Sikkim      B.Andaman and Nicobar Islands
           C.Goa         D.Nagaland
           ''')
           answer=str(input("Your answer: "))
           if answer=="Goa".casefold():
             print('Correct')
             sum+=1
           else:
               print("Wrong answer")

        if i==4:
            question=print("Which is the largest state of India according to area?")
            print('''
            A.Madhya Pradesh      B.Rajasthan
            C.Maharastra          D.Uttar Pradesh
            ''')
            answer=str(input("Your answer: "))
            if answer=="Rajasthan".casefold():
               print('Correct')
               sum+=1 
            else:
               print("Wrong answer")

        if i==5:
            question=print("Which state of India has the longest coastline?")
            print('''
            A.Gujarat      B.Maharashtra
            C.Kerala       D.West Bengal
            ''')
            answer=str(input("Your answer: "))
            if answer=="Gujarat".casefold():
               print('Correct')
               sum+=1
            else:
               print("Wrong answer")

        if i==6:
            question=print("Which state of India has the highest population?")
            print('''
            A.Bihar             B.Madhya Pradesh
            C.Uttar Pradesh     D.Maharashtra
            ''')
            answer=str(input("Your answer: "))
            if answer=="Uttar Pradesh".casefold():
               print('Correct')
               sum+=1
            else:
               print("Wrong answer")

        if i==7:
            question=print("Which state of India has the lowest population?")
            print('''
            A.Manipur      B.Chhattisgarh
            C.Nagaland     D.Sikkim
            ''')
            answer=str(input("Your answer: "))
            if answer=="Sikkim".casefold():
               print('Correct')
               sum+=1
            else:
               print("Wrong answer")

        if i==8:
           question=print("Which state of India has the highest forest cover?")
           print('''
           A.Madhya Pradesh     B.Maharashtra
           C.Tamil Nadu         D.Telangana
            ''')
           answer=str(input("Your answer: "))
           if answer=="Madhya Pradesh".casefold():
              print('Correct')
              sum+=1
           else:
               print("Wrong answer")

        if i==9:
           question=print("Which state of India has the lowest forest cover?")
           print('''
           A.Punjab          B.Rajasthan
           C.Tripura         D.Haryana
            ''')
           answer=str(input("Your answer: "))
           if answer=="Haryana".casefold():
             print('Correct')
             sum+=1
           else:
              print("Wrong answer")

        if i==10:
           question=print("Which state of India has the highest literacy rate?")
           print('''
           A.Tamil Nadu      B.Telangana
           C.Kerala          D.Karnataka
            ''')
           answer=str(input("Your answer: "))
           if answer=="Kerala".casefold():
              print('Correct')
              sum+=1    
           else:
              print("Wrong answer")

        if i==11:
            print("Thank You for Playing!")
            print()
            break
 
        
   print(f"Total score = {sum}")
   print()


    

    
