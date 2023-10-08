money = 100
C1 = "1"
C2 = "2"
C3 = "3"
C4 = "4"
C5 = "5"
hunger = 25
die = False
inventory = []
hospital = False



print("..............................................")
print(".........welcome to the EARNING game..........")
print("..............................................")




name = input("please enter your name:     ")




print("..................................................................................................................................................")
print(name + " You have been lost in the forest for three days and have had nothing to eat and you suddenly see a sign telling you to head east to reach a village") 
print("you have a choice to go to the village or continue to go further in the forest, what do you want to do")
print("you only have 100 rupees in your wallet")




print("1.  to go to the village")
print("2.  to go back in the forest")

Q1 = input()
if Q1 == C2:
    print("you went back into the forest and starved to death!")
    print("you lose!")
    exit()
    
elif Q1 == C1:
        print("you head towards the village")
        print("..........................................................................................................................................")
        print("you see a guard standing in front of the village gate and you will have to pay a fees of 15 rupees to enter, what do you want to do")
        print("1.   talk to the guard")
        print("2.   trespass into the village")
        print("3.   go back to the forest")

else:
    print("you entered an invalid choice")
    exit()

Q2 = input()
if Q2 == C3:
    print("you went back to the forest and in the forest you encountered a bear, but you were too tired to defend yourself and got eaten by the bear and died.")
    exit()
elif Q2 == C2:
    print("you tried to trespass into the village")
    print("you got caught by the guard and had all your money taken and got thrown out of the village so you had no choice but to go back to the forest.")
    print("and in the forest you encountered a bear, but you were too tired to defend yourself and got eaten by the bear and died.")
    exit()
elif Q2 == C1:
        print("you talk to the guard")
        print("guard: Hey! i havent seen your face around here, is this your first time visiting?")
        print("by the way, be careful aroun here, there are rumours that there is a bear lurking around in the woods")
        print("to enter the village we will have to recieve a fees of 15 rupees")
else:
    print("you entered an invalid choice")
    exit()



print("..................................................................................................................................................")
print("1.  to give the fees ")
print("2.  to go back")

Q3 = input()
if Q3 == C2:
    print("you go back into the forest")
    print("you went back to the forest and in the forest you encountered a bear, but you were too tired to defend yourself and got eaten by the bear and died.")
    exit()

else:
    if Q3 == C1:
        money -= 15
        print("you gave the fees of 15 rupees")
        print("you have " + str(money) + " rupees left")
        print("..............................................................................................................................................")
        print("after entering the village you see a restaurant, they are selling snacks for 15 rupees, what do you want to do")
        print("1.  to go to the restaurant")
        print("2.  to stay hungry ")




Q4 = input()
if Q4 == C2:
    print("you chose to not eat food")
    print("you were too hungry and collapsed")
    print("the local villagers found you and brang you to the hospital")
    hunger = 75
    money -= 50
    print("you were charged 50 rupees and you have " + str(money) + " rupees left")
    print("after getting out o the hospital you realize that you need more money and a place to stay.")
    print("what do you want to do?")
elif Q4 == C1:
        money -= 15
        hunger += 50
        print("you ate some food at the restaurant and were charged 15 rupees and you have " + str(money) + " rupees left")
        print("after eating you realize that you need more money and also a place to stay.")
else:
    print("you entered an invalid choice")
    exit()




def main(hunger,money):
    run = True
    while run:
        if hunger <= 25:
            print("you were too hungry and collapsed")
            print("the local villagers found you and brang you to the hospital")
            go_to_hospital(hunger,money)
        elif hunger >= 100:
            print("you collapsed from overeating.")
            print("the local villagers found you and brang you to the hospital")
            go_to_hospital(hunger,money)

        else:    
            print("what do you want to do?")
            print(".................................")
            print("1.            talk to the farmer.")
            print("2.        talk to the blacksmith.")
            print("3.   talk to the cheif of guards.")
            print("4.                   rent a room.")
            print("5.         go back to the forest.")

        choice = input("enter a choice:      ")

        if choice == C1:
            talk_to_farmer(hunger,money)

        else:
            choice == C2
            talk_to_blacksmith(hunger,money)




def talk_to_farmer(hunger,money):
    print("..............................................")
    print("you talk to the farmer")
    print("farmer: hey! do you want something?")
    print("1.   " + name + ": can you sell me vegetables?")
    print("2.   " + name + ": can i work for you?")
    Q5 = input()
    if Q5 == C1:
        print("farmer: sorry son, i dont sell my vegetables directly. if you want some, you will have to buy them from the market.")
    else:
        if Q5 == C2:
            if "hoe" in inventory:
                print("sure you can!")
                print("i will give you 20 rupees for an hours work")
                print("1.    work for the farmer")
                print("2.    dont work or the farmer")
                decision = input()
                if decision == C1:
                    print("how many hours do you want to work:   ")
                    hours = input()
                    if int(hours) >= 6:
                        print("farmer: are you serious about working " + hours + " hours?")
                        print("you will die from overworking")

                    elif int(hours) <= 0:
                        print("farmer: boy, i am not here for joking around, if you dont want to work then get out of here")   

                    else:
                        print("you worked " + hours + " hours for the farmer.")
                        h_calc = ((int(hours)) * 5)
                        m_calc = ((int(hours)) * 20)
                        hunger -= h_calc
                        money += m_calc
                        print("farmer: here you go, your " + str(m_calc) + " rupees")            
                        print("you now you have " + str(money) + " rupees")
                        print("your hunger bar is at " + str(hunger) + " percentage")
                    

                        
            else:
                print("sorry, but i see you dont have a hoe with you, and i cant give you one.")
                print("if you want to work for me, you will have to buy a hoe from the blacksmith")
    


def go_to_hospital(hunger,money):
    if money <= 50:
        print("you did not have enough money to be treated at the hospital and died.")
        print("you lose!")
        exit()
    else:
        money -= 50
        hunger = 70
        print("after getting to the hospital, the doctor immediately treated you.")
        print("you were charged 50 rupees and now you have " + str(money) + "rupees left")
        print("your hunger bar is now at " + str(hunger) + " percentage")

def talk_to_blacksmith():
    print("have this hoe")
    inventory.append("hoe")




    
if __name__ == "__main__":
    main(hunger,money)
