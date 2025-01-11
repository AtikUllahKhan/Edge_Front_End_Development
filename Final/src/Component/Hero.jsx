import { useRef } from "react";

const ComponentName = () => {
  // Separate refs for individual elements
  const newRef1 = useRef();
  const imgRef = useRef();

  // Change class of the first <h1>
  const change1 = () => {
    newRef1.current.classList.remove("text-success");
    newRef1.current.classList.add("text-danger");
  };

  const change2 = () => {
    imgRef.current.src = "https://dummyjson.com/image/400x200/008080/ffffff?text=Hello+Peter";
    imgRef.current.setAttribute("height", "500");
    imgRef.current.setAttribute("width", "300");
  };

  
  const handleSubmit = (event) => {
    event.preventDefault(); 
    alert("Form submitted successfully!");
  };

  return (
    <form onSubmit={handleSubmit}>
      
      <input type="text" placeholder="Type your name" />
      <button type="submit">Submit</button> 

      <div>
       
        <h1 ref={newRef1} className="text-success">Hello </h1>
        <button type="button" onClick={change1} className="text-success">Change Hello </button>

        </div>
        <div>
        <img ref={imgRef} src="https://dummyjson.com/image/400x200/282828" alt="Placeholder"/>
        <button type="button" onClick={change2}> Change Image </button>
      </div>
    </form>
  );
};

export default ComponentName;
