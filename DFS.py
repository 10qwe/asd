#DFS

numNodes = int(input("Enter the no. of nodes :"))
graphs = {}

for i in range(numNodes):
    node = input("enter the node :")
    values = input("enter the adj nodes :")
    graphs[node] = values.split(' ')
print(graphs)   

#data to track
start = input("Start Node : ") 
end = input("Final Node :")

visited = [list(graph.keys())[0]]
queue = [start]


#implementation iterative
def calculate():
    while len(queue):
        print("-> ",end='')
        print(queue[0],end= ' ')
        if queue[0] not in visited:
            visited.append(queue[0])
        for item in graph[queue[0]]:
            if item not in visited :
                if item == end:
                    print("-> "+item)
                    return
                queue.append(item)
                visited.append(item)
      
        queue.pop(0)

    
calculate()
        










