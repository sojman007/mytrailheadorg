/**
 * @author: Olaitan Adesoji
 * @description: a simple play around object oriented concepts
 * @date: 28/01/2020
 * 
 * 
 * */
public  virtual class Opp_Calculator implements I_PriceContract {
	protected decimal amount;
    
    public virtual double calculatePrice(integer count, double ppu){
        return count * ppu;
    }
    static{
        System.debug('A static block executes only once for a class even if you instantiate multiple objects');
    }
    
    public Opp_Calculator(){
        this.amount = 10.0;
        System.debug('This is the constructor with initial amount of ' + this.amount);
    }
}