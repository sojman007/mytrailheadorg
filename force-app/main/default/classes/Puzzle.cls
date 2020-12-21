public class Puzzle {
    // given an initial scrambled state 
    // compare the scrambled state to the final state, 
    // and determine the best move , 
    // return the desired tile and the coordinates to move the tile
    // execute the move on the tile , 
    // recalculate the currentState , 
    // and then repeat until the current state is equal to the final state 

    
    public static final Map<integer, List<integer>> correctState = new  Map<integer , List<integer>>{
        1 => new List<integer>{
            1,2,3
        },
            2 => new List<integer>{
            4,5,6
        },
            3 => new List<integer>{
            7,8,0
        }
        
        
    };
        
        public Map<integer, List<integer>> currentState;
    	public Map<integer, List<integer>> initialState;
    	public integer stepCount;
    	
    
    public Puzzle(Map<integer , List<Integer>> init){
        initialState = init;
        currentState = stepCount < 1 ? initialState : currentState;
    }
    
    
    private void doComparison(){
        //compare currentState and final State
        
    }   
    
    
}