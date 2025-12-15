package com.healthadvisor.controller;

import com.healthadvisor.model.User;
import com.healthadvisor.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

    private final UserService userService;

    public LoginController(UserService userService) { this.userService = userService; }

   @GetMapping("/login")
    public String loginForm(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    @PostMapping("/login")
    public String loginSubmit(@RequestParam String email, @RequestParam String password,
                              Model model, HttpSession session) {
        var found = userService.findByEmail(email);
        if (found.isPresent() && found.get().getPassword().equals(password)) {
            session.setAttribute("userId", found.get().getId());
            return "redirect:/dashboard";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "login";
        }
    }

    @GetMapping("/login/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }

    @GetMapping("/login/dashboard")
    public String dashboard(HttpSession session, Model model) {
        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) return "redirect:/login";

        User user = userService.findById(userId).orElse(null);
        model.addAttribute("user", user);
        return "dashboard";
    }
}
