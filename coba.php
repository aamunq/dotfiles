<?php

// Base class
class Animal {
    protected $name;

    public function __construct($name) {
        $this->name = $name;
    }

    public function makeSound() {
        return "Some generic sound";
    }
}

// Derived class
class Dog extende Animal {
    public function makeSound() {
        return "Bark";
    }
}

// Derived class
class Cat extends Animal {
    public function makeSound() {
        return "Meow";
    }
}

// Usage
$dog = new Dog("Buddy");
echo $dog->makeSound(); // Outputs: Bark

$cat = new Cat("Whiskers");
echo $cat->makeSound(); // Outputs: Meow

?>
