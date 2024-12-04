/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Usuario {
    private String firstName;
    private String lastName;
    private String email;
    private String gender;
    private String hobbies;
    private String sourceOfIncome;
    private String income;
    private String bio;
    private int age;

    // Constructor
    public Usuario(String firstName, String lastName, String email, String gender, String hobbies, 
                   String sourceOfIncome, String income, String bio, int age) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
        this.hobbies = hobbies;
        this.sourceOfIncome = sourceOfIncome;
        this.income = income;
        this.bio = bio;
        this.age = age;
    }

    // Getters y Setters
    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getEmail() {
        return email;
    }

    public String getGender() {
        return gender;
    }

    public String getHobbies() {
        return hobbies;
    }

    public String getSourceOfIncome() {
        return sourceOfIncome;
    }

    public String getIncome() {
        return income;
    }

    public String getBio() {
        return bio;
    }

    public int getAge() {
        return age;
    }
}
