rooms = [str(i) for i in range(1, int(input("Enter number of rooms: "))+1)]
check = ['N' for _ in range(len(rooms))]
status = dict()
for r in rooms:
    status[r] = None
for i in range(len(rooms)):
    status[rooms[i]] = input(f"Enter the status of room {rooms[i]} [C/D]:")
vc = int(input("Enter the position of vaccum cleaner: "))
inx = vc-1
cost = 0
while True:
    if status[rooms[inx]] == "D":
        status[rooms[inx]] = "C"
        cost += 1
    check[inx]='C'
    if check.count('C')==len(rooms):
        break
    if inx == len(rooms)-1:
        inx = 0
    else:
        inx += 1
    cost += 1
print(f"The cost for cleaning all rooms is {cost}")

