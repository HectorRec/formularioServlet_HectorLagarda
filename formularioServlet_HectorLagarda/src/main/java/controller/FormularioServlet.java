/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Usuario;
import java.io.IOException;

@WebServlet("/formulario")
public class FormularioServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener datos del formulario
        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String[] hobbiesArray = request.getParameterValues("hobbies");
        String hobbies = hobbiesArray != null ? String.join(", ", hobbiesArray) : "None";
        String sourceOfIncome = request.getParameter("income-source");
        String income = request.getParameter("income");
        String bio = request.getParameter("bio");
        int age = Integer.parseInt(request.getParameter("age"));

        // Validar datos básicos
        if (firstName.isEmpty() || lastName.isEmpty() || email.isEmpty() || gender == null) {
            response.sendRedirect("error.jsp"); // Redirigir a página de error si es necesario
            return;
        }

        // Crear el modelo Usuario
        Usuario usuario = new Usuario(firstName, lastName, email, gender, hobbies, sourceOfIncome, income, bio, age);

        // Pasar el modelo a la vista
        request.setAttribute("usuario", usuario);
        request.getRequestDispatcher("welcome.jsp").forward(request, response);
    }
}

