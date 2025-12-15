package com.healthadvisor.controller;

import com.healthadvisor.model.User;
import com.healthadvisor.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping({"/", "/index"})
    public String index() {
        return "dashboard";
    }

    @GetMapping("/register")
    public String registerForm(Model m) {
        m.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String registerSubmit(@ModelAttribute User user, Model model) {
        userService.save(user);
        model.addAttribute("message", "Registration successful. Please login.");
        return "login";
    }



    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {
        var u = (User) session.getAttribute("user");
        model.addAttribute("user", u);
        return "dashboard";
    }

    @GetMapping("/user/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
