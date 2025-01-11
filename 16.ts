class variable
{
    private firstName:string;
    private lastName:string;
    constructor(firstName:string, lastName:string)
    {
       this.firstName=firstName; 
       this.lastName=lastName;
    }
    get()
    {
        return `${this.firstName} ${this.lastName}` ;
    }
}
const person= new variable("Atik","Khan")
console.log(person.get());