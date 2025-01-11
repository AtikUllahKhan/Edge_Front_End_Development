interface b{
    id:number,
    name?:string,
    readonly age: number
}


const abc:b={id:5,name:"Atik",age:5}
console.log(abc); 
console.log(abc.id);
