#BFS

numNodes=int(input("Enter the no. of node:"))
graphs={}

for i in range(numNodes):
    node=input("Enter the node:")
    values=input("Enter the adjacent nodes:")
    graphs[node]=values.split(' ')[::-1]

start=input("Enter the start node:")
end=input("Enter the final node:")
visited=[list(graphs.keys())]
stack=[start]


while len(stack):
    print("->",end=' ')
    print(stack[0],end=' ')
    if stack[0] not in vsited:
        visited.append(stack[0])
    poppedItem=stack.pop(0)
    for item in graphs[poppedItem]:
        if item not in visited:
            stack.append(item)
            visited.append(item)
