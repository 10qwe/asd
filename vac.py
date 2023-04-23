class SimpleReflexAgent:
    def __init__(self, loc):
        self.loc = loc  # starting loc of vacuum cleaner

    def sense(self, env):
        return env[self.loc-1]

    def act(self, percept):
        if percept == "d":
            return "clean"
        elif self.loc == 1:
            self.loc = 2
            return "move_right"
        else:
            self.loc = 1
            return "move_left"

# Get user input for the initial env
rooms = [str(i) for i in range(1, int(input("Enter number of rooms: ")) + 1)]
status = dict()
for r in rooms:
    status[r] = None
for i in range(len(rooms)):
    status[rooms[i]] = input(f"Enter the status of room {rooms[i]} [c/d]: ")
vc = int(input("Enter the position of vacuum cleaner: "))

# Initialize the Simple Reflex Agent
agent = SimpleReflexAgent(vc)

# clean the rooms with the Simple Reflex Agent
cost = 0
while "d" in list(set(status.values())):
    percept = agent.sense(list(status.values()))
    action = agent.act(percept)
    if action == "clean":
        status[rooms[agent.loc - 1]] = "c"
        cost += 1
    elif action == "move_left":
        agent.loc = 1
    elif action == "move_right":
        agent.loc = 2
    cost += 1
    print(action)

print(f"The cost for cleaning all rooms is {cost}")

