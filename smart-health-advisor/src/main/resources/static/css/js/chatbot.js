// chatbot.js – Simple Health Chatbot

function sendMessage() {
    let input = document.getElementById("chatInput").value.toLowerCase();
    let chatBox = document.getElementById("chatBox");

    let reply = "";

    if (input.includes("hello") || input.includes("hi")) {
        reply = "Hello! How can I assist you with your health today?";
    } else if (input.includes("fever")) {
        reply = "Fever can be caused by infection. Drink water and rest.";
    } else if (input.includes("covid")) {
        reply = "If you suspect COVID-19, please get tested immediately.";
    } else if (input.includes("pain")) {
        reply = "Pain could be due to strain. Rest and monitor symptoms.";
    } else if (input.trim() === "") {
        reply = "Type something to chat.";
    } else {
        reply = "I’m not sure. Please consult a medical professional.";
    }

    chatBox.innerHTML += `<div class='user'>You: ${input}</div>`;
    chatBox.innerHTML += `<div class='bot'>Bot: ${reply}</div>`;

    document.getElementById("chatInput").value = "";
    chatBox.scrollTop = chatBox.scrollHeight;
}
