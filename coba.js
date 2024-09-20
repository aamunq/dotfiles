class ParentClass {
  constructor(name) {
    this.name = name;
  }

  greet() {
    console.log(`Hello, my name is ${this.name}`);
  }
}

class ChildClass extends ParentClass {
  constructor(name, age) {
    super(name);
    this.age = age;
  }

  displayAge() {
    console.log(`I am ${this.age} years old`);
  }
}

// Example usage:
