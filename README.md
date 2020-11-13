# SearchAlgoVisualizer
 search algorithm visualizer

just an idea atm

sprite kit seems better so ill make a V2 and test some stuff out over there

have 4 types of pathfinders, DFS, BFS, Dijkstra, A* algos 
maybe add weights in the future, but not gonna start with them, just gonna keep this in mind for expansion


allow barriers to be built, and end/start points to be changed

hardest part is dealing with user interface - potentially use sprite kit, or have many small button that are layed in a stack view
nvm i forgot collection views exist, that would have been dumb - https://www.youtube.com/watch?v=VrW_6EixIVQ this will help for finding start and end buttons

each button represents a node, how will the nodes be set up? start with BFS then expand, but i think once one is implemented the rest will come easy. revisit how to make a calculator vid for lay out, how pretty am i gonna make this? watch vids on sprite kit, i feel like sprite kit will look better but buttons will come to me quicker since i already know buttons.


if u finish, u should just buy a developers liscense cuz u in pretty deep by now.

PickerView to choose algo
one screen? but will it be to cramped, is easier to make tho cuz I don't have to worry about passing values between views.
How are buttons resized based on screen size?



startRow, finishRow, etc determined by user, then nodes are created

//create array of visited nodes so we can go back and look at shortest path

Node{
    row 
    col
    isVisited = false
    isFinish {
    if(row == finishRow && col == finishCol){
            return true
    }else{
            return false:
    }
}
    isStart {
    if(row == startRow && col == startCol){
            return true
    }else{
            return false:
    }
}

    distance = 1000; //for dijkstra
    isWall = false;
    previousNode = null
}

or 

Node FinishLine = new Node()
Node Start = new Node()

that way you ensure only having one of each

i almost gave up till i found this vid cuz collection views are difficult... it looks promising https://www.youtube.com/watch?v=KHQIGHOdPWg

youtube.com/watch?v=Wi713xoTVsU this too, ya I'm def staying up all night.
